#include "roles.h"
#include "uast.h"
#include "uast_private.h"

#include <cinttypes>
#include <cstdarg>
#include <cstdbool>
#include <cstdint>
#include <cstring>
#include <deque>
#include <new>
#include <set>
#include <vector>

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

extern "C" {
#include "testing_tools.h"
}

#define BUF_SIZE 256
char error_message[BUF_SIZE];

struct Uast {
  NodeIface iface;
};

struct UastIterator {
  const Uast *ctx;
  TreeOrder order;
  std::deque<void *> dqueue;
  std::set<void *> childrenAdded;
};

struct Nodes {
  std::vector<void *> results;
  int len;
  int cap;
};

static xmlDocPtr CreateDocument(const Uast *ctx, void *node);
static xmlNodePtr CreateXmlNode(const Uast *ctx, void *node, xmlNodePtr parent);
void Error(void *ctx, const char *msg, ...);
// Adds the children of the node to the iterator queue and returns
// if the node was already checked, which will happen with leaf nodes
// or nodes which childs already processed. Used for the POSTORDER
// iterative traversal algorithm.
static bool MaybeAddChildren(UastIterator *iter, void *node);
// Get the next element in pre-order traversal mode.
static void *PreOrderNext(UastIterator *iter);
// Get the next element in level-order traversal mode.
static void *LevelOrderNext(UastIterator *iter);
// Get the next element in post-order traversal mode.
static void *PostOrderNext(UastIterator *iter);

//////////////////////////////
///////// PUBLIC API /////////
//////////////////////////////

void NodesFree(Nodes *nodes) {
  if (nodes != nullptr)
    delete nodes;
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
  if (ctx != nullptr)
    delete ctx;

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

  if (!iter) {
    Error(nullptr, "Unable to get memory\n");
    return nullptr;
  }

  iter->order = order;

  iter->dqueue.push_front(node);
  iter->ctx = ctx;
  return iter;
}

void UastIteratorFree(UastIterator *iter) {
  if (iter != nullptr)
    delete iter;
}

void *UastIteratorNext(UastIterator *iter) {

  if (iter == nullptr || iter->dqueue.empty()) {
    return nullptr;
  }

  void *retNode = nullptr;

  switch(iter->order) {
    case LEVELORDER:
      return LevelOrderNext(iter);
    case POSTORDER:
      return PostOrderNext(iter);
    default:
      return PreOrderNext(iter);
  }
}

NodeIface UastGetIface(const Uast *ctx) { return ctx->iface; }

Nodes *UastFilter(const Uast *ctx, void *node, const char *query) {
  xmlDocPtr doc = nullptr;
  xmlXPathContextPtr xpathCtx = nullptr;
  xmlXPathObjectPtr xpathObj = nullptr;
  bool ok = false;
  int size = 0;
  xmlNodeSetPtr result = nullptr;
  xmlNodePtr *results = nullptr;
  xmlGenericErrorFunc handler;

  Nodes *nodes;
  try {
    nodes = new Nodes();
  } catch (std::bad_alloc) {
    Error(nullptr, "Unable to get memory\n");
    return nullptr;
  }
  doc = CreateDocument(ctx, node);
  if (!doc) {
    goto error1;
  }
  xpathCtx = static_cast<xmlXPathContextPtr>(xmlXPathNewContext(doc));
  if (!xpathCtx) {
    goto error2;
  }

  handler = (xmlGenericErrorFunc)Error;
  initGenericErrorDefaultFunc(&handler);

  xpathObj = xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
  if (!xpathObj) {
    goto error3;
  }

  // Get array of results
  result = xpathObj->nodesetval;
  if (!result) {
    Error(nullptr, "Unable to get array of results\n");
    goto error3;
  }
  results = result->nodeTab;
  size = (result) ? result->nodeNr : 0;

  if (NodesSetSize(nodes, size) != 0) {
    Error(nullptr, "Unable to set nodes size\n");
    goto error3;
  }

  // Populate array of results
  for (int i = 0; i < size; i++) {
    nodes->results[i] = results[i]->_private;
  }
  ok = true;

error3:
  xmlXPathFreeObject(xpathObj);
error2:
  xmlXPathFreeContext(xpathCtx);
error1:
  xmlFreeDoc(doc);

  if (!ok) {
    NodesFree(nodes);
    return nullptr;
  }
  return nodes;
}

char *LastError(void) {
  return strndup(error_message, BUF_SIZE);
}

//////////////////////////////
///////// PRIVATE API ////////
//////////////////////////////

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

  if (!xmlNode) {
    goto error;
  }

  xmlNode->_private = node;
  if (parent) {
    if (!xmlAddChild(parent, xmlNode)) {
      goto error;
    }
  }

  // Token
  token = ctx->iface.Token(node);
  if (token) {
    if (!xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(token))) {
      goto error;
    }
  }

  // Roles
  roles_size = ctx->iface.RolesSize(node);
  for (int i = 0; i < roles_size; i++) {
    uint16_t role = ctx->iface.RoleAt(node, i);
    const char *role_name = RoleNameForId(role);
    if (role_name != nullptr) {
      if (!xmlNewProp(xmlNode, BAD_CAST(role_name), nullptr)) {
        goto error;
      }
    }
  }

  // Properties
  for (int i = 0; i < ctx->iface.PropertiesSize(node); i++) {
    const char *key = ctx->iface.PropertyKeyAt(node, i);
    const char *value = ctx->iface.PropertyValueAt(node, i);
    if (!xmlNewProp(xmlNode, BAD_CAST(key), BAD_CAST(value))) {
      goto error;
    }
  }

  // Position
  if (ctx->iface.HasStartOffset(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartOffset(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(nullptr, "Unable to set start offset\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "startOffset", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasStartLine(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartLine(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(nullptr, "Unable to set start line\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "startLine", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasStartCol(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartCol(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(nullptr, "Unable to set start column\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "startCol", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasEndOffset(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndOffset(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(nullptr, "Unable to set end offset\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "endOffset", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasEndLine(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndLine(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(nullptr, "Unable to set end line\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "endLine", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasEndCol(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndCol(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(nullptr, "Unable to set end column\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "endCol", BAD_CAST buf)) {
      goto error;
    }
  }

  // Recursivelly visit all children
  children_size = ctx->iface.ChildrenSize(node);
  for (int i = 0; i < children_size; i++) {
    void *child = ctx->iface.ChildAt(node, i);
    if (!CreateXmlNode(ctx, child, xmlNode)) {
      goto error;
    }
  }
  return xmlNode;

error:
  xmlFreeNode(xmlNode);
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

static bool MaybeAddChildren(UastIterator *iter, void *node) {
  const bool checked = iter->childrenAdded.find(node) != iter->childrenAdded.end();

  if(!checked) {
    int children_size = iter->ctx->iface.ChildrenSize(node);
    for (int i = children_size - 1; i >= 0; i--) {
      iter->dqueue.push_front(iter->ctx->iface.ChildAt(node, i));
    }
    iter->childrenAdded.insert(node);
  }

  return checked;
}

static void *PreOrderNext(UastIterator *iter) {
  void *retNode = iter->dqueue.front();
  iter->dqueue.pop_front();
  if (retNode == nullptr) {
    return nullptr;
  }

  int children_size = iter->ctx->iface.ChildrenSize(retNode);
  for (int i = children_size - 1; i >= 0; i--) {
    iter->dqueue.push_front(iter->ctx->iface.ChildAt(retNode, i));
  }

  return retNode;
}

static void *LevelOrderNext(UastIterator *iter) {
  void *retNode = iter->dqueue.front();
  iter->dqueue.pop_front();

  if (retNode == nullptr) {
    return nullptr;
  }

  int children_size = iter->ctx->iface.ChildrenSize(retNode);
  for (int i = 0; i < children_size; i++) {
    iter->dqueue.push_back(iter->ctx->iface.ChildAt(retNode, i));
  }

  return retNode;
}

static void *PostOrderNext(UastIterator *iter) {
  void *curNode = iter->dqueue.front();
  if (curNode == nullptr) {
    return nullptr;
  }

  while(!MaybeAddChildren(iter, curNode)) {
    curNode = iter->dqueue.front();
  }

  curNode = iter->dqueue.front();
  iter->dqueue.pop_front();
  return curNode;
}

