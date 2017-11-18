#include "uast.h"
#include "uast_private.h"

#include <inttypes.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <glib.h>

#include "roles.h"
#include "testing_tools.h"

#define BUF_SIZE 256
char error_message[BUF_SIZE];

struct Uast {
  NodeIface iface;
};

struct UastIterator {
  const Uast *ctx;
  TreeOrder order;
  GQueue *stack;
  GHashTable *childrenAdded;
};

struct Nodes {
  void **results;
  int len;
  int cap;
};

static xmlDocPtr CreateDocument(const Uast *ctx, void *node);
static xmlNodePtr CreateXmlNode(const Uast *ctx, void *node, xmlNodePtr parent);
void Error(void *ctx, const char *msg, ...);

//////////////////////////////
///////// PUBLIC API /////////
//////////////////////////////

Nodes *NodesNew(void) { return calloc(1, sizeof(Nodes)); }

void NodesFree(Nodes *nodes) {
  g_free(nodes->results);
  g_free(nodes);
}

int NodesSize(const Nodes *nodes) { return nodes->len; }

void *NodeAt(const Nodes *nodes, int index) {
  if (index < nodes->len) {
    return nodes->results[index];
  }
  return NULL;
}

Uast *UastNew(NodeIface iface) {
  memset(error_message, 0, BUF_SIZE);

  Uast *ctx = calloc(1, sizeof(Uast));
  if (!ctx) {
    Error(NULL, "Unable to get memory\n");
    return NULL;
  }
  xmlInitParser();
  ctx->iface = iface;
  return ctx;
}

void UastFree(Uast *ctx) {
  g_free(ctx);
  xmlCleanupParser();
}

UastIterator *UastIteratorNew(const Uast *ctx, void *node, TreeOrder order) {
  memset(error_message, 0, BUF_SIZE);

  UastIterator *iter = calloc(1, sizeof(UastIterator));
  if (!iter) {
    Error(NULL, "Unable to get memory\n");
    return NULL;
  }

  iter->stack = g_queue_new();
  iter->order = order;

  if (iter->order == POSTORDER) {
    iter->childrenAdded = g_hash_table_new(g_int_hash, g_str_equal);
  } else {
    iter->childrenAdded = NULL;
  }

  g_queue_push_head(iter->stack, node);
  iter->ctx = ctx;
  return iter;
}

void UastIteratorFree(UastIterator *iter) {
  g_queue_free(iter->stack);
  if (iter->childrenAdded) {
    g_hash_table_destroy(iter->childrenAdded);
  }
  g_free(iter);
}

// Adds the children of the node to the iterator queue and returns
// if the node was already checked, which will happen with leaf nodes
// or nodes which childs already processed. Used for the POSTORDER
// iterative traversal algorithm.
static bool MaybeAddChildren(UastIterator *iter, void *node) {

  bool checked = g_hash_table_contains(iter->childrenAdded, node);

  if(!checked) {
    int children_size = iter->ctx->iface.ChildrenSize(node);
    for (int i = children_size - 1; i >= 0; i--) {
      g_queue_push_head(iter->stack, iter->ctx->iface.ChildAt(node, i));
    }
    g_hash_table_add(iter->childrenAdded, node);
  }

  return checked;
}

static void *PreOrderNext(UastIterator *iter) {
  void *retNode = g_queue_pop_head(iter->stack);
  if (retNode == NULL) {
    return NULL;
  }

  int children_size = iter->ctx->iface.ChildrenSize(retNode);
  for (int i = children_size - 1; i >= 0; i--) {
    g_queue_push_head(iter->stack, iter->ctx->iface.ChildAt(retNode, i));
  }

  return retNode;
}

static void *LevelOrderNext(UastIterator *iter) {
  void *retNode = g_queue_pop_head(iter->stack);
  if (retNode == NULL) {
    return NULL;
  }

  int children_size = iter->ctx->iface.ChildrenSize(retNode);
  for (int i = 0; i < children_size; i++) {
    g_queue_push_tail(iter->stack, iter->ctx->iface.ChildAt(retNode, i));
  }

  return retNode;
}

static void *PostOrderNext(UastIterator *iter) {
  void *curNode = g_queue_peek_head(iter->stack);
  if (curNode == NULL) {
    return NULL;
  }

  while(!MaybeAddChildren(iter, curNode)) {
    curNode = g_queue_peek_head(iter->stack);
  }

  return g_queue_pop_head(iter->stack);
}

void *UastIteratorNext(UastIterator *iter) {

  if (iter == NULL || g_queue_is_empty(iter->stack)) {
    return NULL;
  }

  void *retNode = NULL;

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
  xmlDocPtr doc = NULL;
  xmlXPathContextPtr xpathCtx = NULL;
  xmlXPathObjectPtr xpathObj = NULL;
  bool ok = false;

  Nodes *nodes = NodesNew();
  if (!nodes) {
    Error(NULL, "Unable to get memory\n");
    return NULL;
  }
  doc = CreateDocument(ctx, node);
  if (!doc) {
    goto error1;
  }
  xpathCtx = xmlXPathNewContext(doc);
  if (!xpathCtx) {
    goto error2;
  }

  xmlGenericErrorFunc handler = (xmlGenericErrorFunc)Error;
  initGenericErrorDefaultFunc(&handler);

  xpathObj = xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
  if (!xpathObj) {
    goto error3;
  }

  // Get array of results
  xmlNodeSetPtr result = xpathObj->nodesetval;
  if (!result) {
    Error(NULL, "Unable to get array of results\n");
    goto error3;
  }
  xmlNodePtr *results = result->nodeTab;
  int size = (result) ? result->nodeNr : 0;

  if (NodesSetSize(nodes, size) != 0) {
    Error(NULL, "Unable to set nodes size\n");
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
    return NULL;
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
    nodes->results = realloc(nodes->results, len * sizeof(void *));
    if (nodes->results == NULL) {
      nodes->cap = nodes->len = 0;
      return -1;
    }
    nodes->cap = len;
  }
  nodes->len = len;
  return 0;
}

int NodesCap(const Nodes *nodes) { return nodes->cap; }

void **NodesAll(const Nodes *nodes) { return nodes->results; }

static xmlNodePtr CreateXmlNode(const Uast *ctx, void *node,
                                xmlNodePtr parent) {
  char buf[BUF_SIZE];

  const char *internal_type = ctx->iface.InternalType(node);
  xmlNodePtr xmlNode = xmlNewNode(NULL, BAD_CAST(internal_type));
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
  const char *token = ctx->iface.Token(node);
  if (token) {
    if (!xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(token))) {
      goto error;
    }
  }

  // Roles
  int roles_size = ctx->iface.RolesSize(node);
  for (int i = 0; i < roles_size; i++) {
    uint16_t role = ctx->iface.RoleAt(node, i);
    const char *role_name = RoleNameForId(role);
    if (role_name != NULL) {
      if (!xmlNewProp(xmlNode, BAD_CAST(role_name), NULL)) {
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
      Error(NULL, "Unable to set start offset\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "startOffset", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasStartLine(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartLine(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(NULL, "Unable to set start line\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "startLine", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasStartCol(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.StartCol(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(NULL, "Unable to set start column\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "startCol", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasEndOffset(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndOffset(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(NULL, "Unable to set end offset\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "endOffset", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasEndLine(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndLine(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(NULL, "Unable to set end line\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "endLine", BAD_CAST buf)) {
      goto error;
    }
  }
  if (ctx->iface.HasEndCol(node)) {
    int ret = snprintf(buf, BUF_SIZE, "%" PRIu32, ctx->iface.EndCol(node));
    if (ret < 0 || ret >= BUF_SIZE) {
      Error(NULL, "Unable to set end column\n");
      goto error;
    }
    if (!xmlNewProp(xmlNode, BAD_CAST "endCol", BAD_CAST buf)) {
      goto error;
    }
  }

  // Recursivelly visit all children
  int children_size = ctx->iface.ChildrenSize(node);
  for (int i = 0; i < children_size; i++) {
    void *child = ctx->iface.ChildAt(node, i);
    if (!CreateXmlNode(ctx, child, xmlNode)) {
      goto error;
    }
  }
  return xmlNode;

error:
  xmlFreeNode(xmlNode);
  return NULL;
}

static xmlDocPtr CreateDocument(const Uast *ctx, void *node) {
  xmlDocPtr doc = xmlNewDoc(BAD_CAST("1.0"));
  if (!doc) {
    return NULL;
  }
  xmlNodePtr xmlNode = CreateXmlNode(ctx, node, NULL);
  if (!xmlNode) {
    xmlFreeDoc(doc);
    return NULL;
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
