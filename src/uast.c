#include "uast.h"
#include "uast_private.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#include "roles.h"
#include "testing_tools.h"

struct Uast {
  NodeIface iface;
};

struct Nodes {
  void **results;
  int len;
  int cap;
};

static xmlDocPtr CreateDocument(const Uast *ctx, void *node);
static xmlNodePtr CreateXmlNode(const Uast *ctx, void *node, xmlNodePtr parent);

//////////////////////////////
///////// PUBLIC API /////////
//////////////////////////////

Nodes *NodesNew() { return calloc(1, sizeof(Nodes)); }

void NodesFree(Nodes *nodes) {
  if (nodes) {
    free(nodes->results);
    free(nodes);
  }
}

int NodesSize(const Nodes *nodes) { return nodes->len; }

void *NodeAt(const Nodes *nodes, int index) {
  if (index < nodes->len) {
    return nodes->results[index];
  }
  return NULL;
}

Uast *UastNew(NodeIface iface) {
  Uast *ctx = calloc(1, sizeof(Uast));
  if (!ctx) {
    return NULL;
  }
  xmlInitParser();
  ctx->iface = iface;
  return ctx;
}

void UastFree(Uast *ctx) {
  free(ctx);
  xmlCleanupParser();
}

NodeIface UastGetIface(const Uast *ctx) { return ctx->iface; }

Nodes *UastFilter(const Uast *ctx, void *node, const char *query) {
  xmlDocPtr doc = NULL;
  xmlXPathContextPtr xpathCtx = NULL;
  xmlXPathObjectPtr xpathObj = NULL;
  bool ok = false;

  Nodes *nodes = NodesNew();
  if (!nodes) {
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
  xpathObj = xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
  if (!xpathObj) {
    goto error3;
  }

  // Get array of results
  xmlNodeSetPtr result = xpathObj->nodesetval;
  if (!result) {
      goto error3;
  }
  xmlNodePtr *results = result->nodeTab;
  int size = (result) ? result->nodeNr : 0;

  if (NodesSetSize(nodes, size) != 0) {
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
