#include "roles.h"
#include "testing_tools.h"
#include "uast.h"
#include "uast_private.h"

#include <cinttypes>
#include <cstdarg>
#include <cstdbool>
#include <cstdint>
#include <cstring>
#include <deque>
#include <memory>
#include <new>
#include <set>
#include <type_traits>
#include <typeinfo>
#include <vector>

#include <cstdio>  // XXX

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#define BUF_SIZE 256
char error_message[BUF_SIZE];

struct Uast {
  NodeIface iface;
};

struct UastIterator {
  const Uast *ctx;
  TreeOrder order;
  std::deque<void *> pending;
  std::set<void *> visited;
};

struct Nodes {
  std::vector<void *> results;
  int len;
  int cap;
};

// XXX doc, user own nodesVal or stringVal must take ownership and free after use
typedef struct UastTypedResult {
  bool hasError;
  XPathType type;
  Nodes *nodesVal;
  int boolVal;
  double numberVal;
  char *stringVal;

  UastTypedResult(): hasError(false), type(XPATHTYPE_UNDEFINED), nodesVal(nullptr),
                     numberVal(-1), stringVal(nullptr) {}
  // XXX check: (void *) user, user2, (int) index, index2
} UastTypedResult;

static xmlDocPtr CreateDocument(const Uast *ctx, void *node);
static xmlNodePtr CreateXmlNode(const Uast *ctx, void *node, xmlNodePtr parent);
void Error(void *ctx, const char *msg, ...);
// Adds the children of the node to the iterator queue and returns
// if the node was already checked, which will happen with leaf nodes
// or nodes which childs already processed. Used for the POST_ORDER
// iterative traversal algorithm.
static bool Visited(UastIterator *iter, void *node);
// Get the next element in pre-order traversal mode.
static void *PreOrderNext(UastIterator *iter);
// Get the next element in level-order traversal mode.
static void *LevelOrderNext(UastIterator *iter);
// Get the next element in post-order traversal mode.
static void *PostOrderNext(UastIterator *iter);
// Get the results of a query with a TypedResult template class instance
UastTypedResult UastFilterTyped(const Uast *ctx, void *node, const char *query);

class QueryResult {
  xmlXPathContextPtr xpathCtx;
  xmlDocPtr doc;

  public:
  xmlXPathObjectPtr xpathObj;

  QueryResult(const Uast *ctx, void *node, const char *query)
  {
    doc = CreateDocument(ctx, node);
    if (!doc) {
      xmlFreeDoc(doc);
      throw std::runtime_error(LastError());
    }

    xpathCtx = static_cast<xmlXPathContextPtr>(xmlXPathNewContext(doc));
    if (!xpathCtx) {
      xmlXPathFreeContext(xpathCtx);
      throw std::runtime_error(LastError());
    }

    xpathObj = xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
    if (!xpathObj) {
      xmlXPathFreeObject(xpathObj);
      throw std::runtime_error(LastError());
    }
  }

  ~QueryResult()
  {
    if (xpathObj) xmlXPathFreeObject(xpathObj);
    if (xpathCtx) xmlXPathFreeContext(xpathCtx);
    if (doc) xmlFreeDoc(doc);
  }
};


class CreateXMLNodeException: public std::runtime_error {
  public:
  CreateXMLNodeException(const char *msg): runtime_error(msg) {
    Error(nullptr, msg);
  }
  // Keeps LastError
  CreateXMLNodeException(): std::runtime_error("") {}
};

//////////////////////////////
///////// PUBLIC API /////////
//////////////////////////////

void NodesFree(Nodes *nodes) {
  if (nodes != nullptr) {
    delete nodes;
    nodes = nullptr;
  }
}

int NodesSize(const Nodes *nodes) { return nodes->len; }

void *NodeAt(const Nodes *nodes, int index) {
  if (index < nodes->len) {
    return nodes->results[index];
  }
  return nullptr;
}

Uast *UastNew(NodeIface iface) {
  Uast *ctx;

  try {
    ctx = new Uast();
  } catch (std::bad_alloc) {
    Error(nullptr, "Unable to get memory\n");
    return nullptr;
  }

  if (!ctx) {
    Error(nullptr, "Unable to get memory\n");
    return nullptr;
  }
  xmlInitParser();
  ctx->iface = iface;
  return ctx;
}

void UastFree(Uast *ctx) {
  if (ctx != nullptr) {
    delete ctx;
    ctx = nullptr;
  }

  xmlCleanupParser();
}

UastIterator *UastIteratorNew(const Uast *ctx, void *node, TreeOrder order) {
  UastIterator *iter;

  try {
    iter = new UastIterator();
  } catch (std::bad_alloc) {
    Error(nullptr, "Unable to get memory\n");
    return nullptr;
  }

  iter->order = order;

  iter->pending.push_front(node);
  iter->ctx = ctx;
  return iter;
}

void UastIteratorFree(UastIterator *iter) {
  if (iter != nullptr) {
    delete iter;
    iter = nullptr;
  }
}

void *UastIteratorNext(UastIterator *iter) {

  if (iter == nullptr || iter->pending.empty()) {
    return nullptr;
  }

  switch(iter->order) {
    case LEVEL_ORDER:
      return LevelOrderNext(iter);
    case POST_ORDER:
      return PostOrderNext(iter);
    default:
      return PreOrderNext(iter);
  }
}

NodeIface UastGetIface(const Uast *ctx) { return ctx->iface; }

char *LastError(void) {
  return strndup(error_message, BUF_SIZE);
}

Nodes *UastFilter(const Uast *ctx, void *node, const char *query) {
  auto result = UastFilterTyped(ctx, node, query);

  if (result.hasError == 1) {
    return nullptr;
  }

  if (result.type != XPATHTYPE_NODESET) {
    Error(nullptr, "Result of UastFilter[Nodes] if not a node set\n");
  }

  return result.nodesVal;
}

int UastFilterBool(const Uast *ctx, void *node, const char *query) {
  auto result = UastFilterTyped(ctx, node, query);

  if (result.type != XPATHTYPE_BOOLEAN) {
    Error(nullptr, "Result of UastFilterBool is not boolean\n");
    result.boolVal = -1;
  }

  return result.boolVal;
}

double UastFilterNumber(const Uast *ctx, void *node, const char *query) {
  auto result = UastFilterTyped(ctx, node, query);

  if (result.type != XPATHTYPE_NUMBER) {
    Error(nullptr, "Result of UastFilterNumber is not numeric\n");
    result.numberVal = -1;
  }

  return result.numberVal;
}

const char *UastFilterString(const Uast *ctx, void *node, const char *query) {
  auto result = UastFilterTyped(ctx, node, query);

  if (result.type != XPATHTYPE_STRING) {
    Error(nullptr, "Result of UastFilterNumber is not a string\n");
  }

  return result.stringVal;
}

UastTypedResult UastFilterTyped(const Uast *ctx, void *node, const char *query) {
  UastTypedResult ret;

  try {

    auto handler = (xmlGenericErrorFunc)Error;
    initGenericErrorDefaultFunc(&handler);

    auto qobject = QueryResult(ctx, node, query);
    ret.type = static_cast<XPathType>(qobject.xpathObj->type);

    switch (qobject.xpathObj->type) {
      case XPATH_BOOLEAN:

        ret.boolVal = qobject.xpathObj->boolval;
        break;

      case XPATH_NUMBER:
        ret.numberVal = qobject.xpathObj->floatval;
        break;

      case XPATH_STRING:
        {
          auto cstr = reinterpret_cast<char *>(qobject.xpathObj->stringval);
          if (!cstr) {
            Error(nullptr, "string query returned null string\n");
            ret.hasError = true;
            break;
          }
          // XXX needed?
          ret.stringVal = strdup(cstr);
        }
        break;

      case XPATH_NODESET:
        {
          if (!qobject.xpathObj->nodesetval) {
            Error(nullptr, "Unable to get array of result nodes");
            ret.hasError = true;
            break;
          }

          try {
            ret.nodesVal = new Nodes();
          } catch (std::bad_alloc) {
            Error(nullptr, "Unable to get memory\n");
            ret.hasError = true;
            break;
          }
          if (!qobject.xpathObj->nodesetval) {
            Error(nullptr, "Unable to get array of results\n");
            ret.hasError = true;
            break;
          }

          auto results = qobject.xpathObj->nodesetval->nodeTab;
          auto size = qobject.xpathObj->nodesetval->nodeNr;
          int realSize = 0;

          for (int i = 0; i < size; i++) {
            if (results[i] != nullptr && results[i]->_private != nullptr) {
              ++realSize;
            }
          }

          if (NodesSetSize(ret.nodesVal, realSize) != 0) {
            Error(nullptr, "Unable to set nodes size\n");
            ret.hasError = true;
            break;
          }

          // Populate array of results
          int nodeIdx = 0;
          for (int i = 0; i < size; i++) {
            if (results[i] != nullptr && results[i]->_private != nullptr) {
              ret.nodesVal->results[nodeIdx++] = results[i]->_private;
            }
          }
        }
        break;

      default:
        {
          char msg[128];
          snprintf(msg, 128, "Unsupported return type (%d)\n", qobject.xpathObj->type);
          Error(nullptr, msg);
          ret.hasError = true;
        }
    }

    if (ret.hasError == true && ret.nodesVal) {
      NodesFree(ret.nodesVal);
      ret.nodesVal = nullptr;
    }

  } catch (std::runtime_error &e) {
    ret.hasError = true;
  }

  return ret;
}

//////////////////////////////
///////// PRIVATE API ////////
//////////////////////////////

Nodes *NodesNew(void) { return new Nodes(); }

int NodesSetSize(Nodes *nodes, int len) {
  if (len > nodes->cap) {
    nodes->results.resize(len);
    nodes->cap = len;
  }
  nodes->len = len;
  return 0;
}

int NodesCap(const Nodes *nodes) { return nodes->cap; }

static xmlNodePtr CreateXmlNode(const Uast *ctx, void *node,
                                xmlNodePtr parent) {
  char buf[BUF_SIZE];

  const char *internal_type = ctx->iface.InternalType(node);
  xmlNodePtr xmlNode = static_cast<xmlNodePtr>(xmlNewNode(nullptr, BAD_CAST(internal_type)));
  int children_size = 0;
  int roles_size = 0;
  const char *token = nullptr;

  try {
    if (!xmlNode) {
      throw CreateXMLNodeException();
    }

    xmlNode->_private = node;
    if (parent) {
      if (!xmlAddChild(parent, xmlNode)) {
        throw CreateXMLNodeException();
      }
    }

    // Token
    token = ctx->iface.Token(node);
    if (token) {
      if (!xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(token))) {
        throw CreateXMLNodeException();
      }
    }

    // Roles
    roles_size = ctx->iface.RolesSize(node);
    for (int i = 0; i < roles_size; i++) {
      uint16_t role = ctx->iface.RoleAt(node, i);
      const char *role_name = RoleNameForId(role);
      if (role_name != nullptr) {
        if (!xmlNewProp(xmlNode, BAD_CAST(role_name), nullptr)) {
          throw CreateXMLNodeException();
        }
      }
    }

    // Properties
    for (int i = 0; i < ctx->iface.PropertiesSize(node); i++) {
      const char *key = ctx->iface.PropertyKeyAt(node, i);
      const char *value = ctx->iface.PropertyValueAt(node, i);
      if (!xmlNewProp(xmlNode, BAD_CAST(key), BAD_CAST(value))) {
        throw CreateXMLNodeException();
      }
    }

    // Position
    if (ctx->iface.HasStartOffset(node)) {
      int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartOffset(node));
      if (ret < 0 || ret >= BUF_SIZE) {
        throw CreateXMLNodeException("Unable to set start offset\n");
      }
      if (!xmlNewProp(xmlNode, BAD_CAST "startOffset", BAD_CAST buf)) {
        throw CreateXMLNodeException();
      }
    }
    if (ctx->iface.HasStartLine(node)) {
      int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartLine(node));
      if (ret < 0 || ret >= BUF_SIZE) {
        throw CreateXMLNodeException("Unable to start line\n");
      }
      if (!xmlNewProp(xmlNode, BAD_CAST "startLine", BAD_CAST buf)) {
        throw CreateXMLNodeException();
      }
    }
    if (ctx->iface.HasStartCol(node)) {
      int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartCol(node));
      if (ret < 0 || ret >= BUF_SIZE) {
        throw CreateXMLNodeException("Unable to start column\n");
      }
      if (!xmlNewProp(xmlNode, BAD_CAST "startCol", BAD_CAST buf)) {
        throw CreateXMLNodeException();
      }
    }
    if (ctx->iface.HasEndOffset(node)) {
      int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndOffset(node));
      if (ret < 0 || ret >= BUF_SIZE) {
        throw CreateXMLNodeException("Unable to set end offset\n");
      }
      if (!xmlNewProp(xmlNode, BAD_CAST "endOffset", BAD_CAST buf)) {
        throw CreateXMLNodeException();
      }
    }
    if (ctx->iface.HasEndLine(node)) {
      int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndLine(node));
      if (ret < 0 || ret >= BUF_SIZE) {
        Error(nullptr, "Unable to set end line\n");
        throw CreateXMLNodeException();
      }
      if (!xmlNewProp(xmlNode, BAD_CAST "endLine", BAD_CAST buf)) {
        throw CreateXMLNodeException();
      }
    }
    if (ctx->iface.HasEndCol(node)) {
      int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndCol(node));
      if (ret < 0 || ret >= BUF_SIZE) {
        throw CreateXMLNodeException("Unable to set end column\n");
      }
      if (!xmlNewProp(xmlNode, BAD_CAST "endCol", BAD_CAST buf)) {
        throw CreateXMLNodeException();
      }
    }

    // Recursivelly visit all children
    children_size = ctx->iface.ChildrenSize(node);
    for (int i = 0; i < children_size; i++) {
      void *child = ctx->iface.ChildAt(node, i);
      if (!CreateXmlNode(ctx, child, xmlNode)) {
        throw CreateXMLNodeException();
      }
    }
    return xmlNode;
  } catch (CreateXMLNodeException &e) {
    xmlFreeNode(xmlNode);
  }

  return nullptr;
}

static xmlDocPtr CreateDocument(const Uast *ctx, void *node) {
  xmlDocPtr doc = static_cast<xmlDocPtr>(xmlNewDoc(BAD_CAST("1.0")));
  if (!doc) {
    return nullptr;
  }
  xmlNodePtr xmlNode = CreateXmlNode(ctx, node, nullptr);
  if (!xmlNode) {
    xmlFreeDoc(doc);
    return nullptr;
  }
  xmlDocSetRootElement(doc, xmlNode);
  return doc;
}

void Error(void *ctx, const char *msg, ...) {
   va_list arg_ptr;

   va_start(arg_ptr, msg);
   vsnprintf(error_message, BUF_SIZE, msg, arg_ptr);
   va_end(arg_ptr);
}

static bool Visited(UastIterator *iter, void *node) {
  const bool visited = iter->visited.find(node) != iter->visited.end();

  if(!visited) {
    int children_size = iter->ctx->iface.ChildrenSize(node);
    for (int i = children_size - 1; i >= 0; i--) {
      iter->pending.push_front(iter->ctx->iface.ChildAt(node, i));
    }
    iter->visited.insert(node);
  }

  return visited;
}

static void *PreOrderNext(UastIterator *iter) {
  void *retNode = iter->pending.front();
  iter->pending.pop_front();
  if (retNode == nullptr) {
    return nullptr;
  }

  int children_size = iter->ctx->iface.ChildrenSize(retNode);
  for (int i = children_size - 1; i >= 0; i--) {
    iter->pending.push_front(iter->ctx->iface.ChildAt(retNode, i));
  }

  return retNode;
}

static void *LevelOrderNext(UastIterator *iter) {
  void *retNode = iter->pending.front();
  iter->pending.pop_front();

  if (retNode == nullptr) {
    return nullptr;
  }

  int children_size = iter->ctx->iface.ChildrenSize(retNode);
  for (int i = 0; i < children_size; i++) {
    iter->pending.push_back(iter->ctx->iface.ChildAt(retNode, i));
  }

  return retNode;
}

static void *PostOrderNext(UastIterator *iter) {
  void *curNode = iter->pending.front();
  if (curNode == nullptr) {
    return nullptr;
  }

  while(!Visited(iter, curNode)) {
    curNode = iter->pending.front();
  }

  curNode = iter->pending.front();
  iter->pending.pop_front();
  return curNode;
}
