#include "uast.h"
#include "uast_private.h"

#include <stddef.h>
#include <stdlib.h>

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#include "roles.h"
#include "testing_tools.h"

#define GET(__NODE__, __PROP__, ...) \
  (api->iface.__PROP__(__NODE__, ##__VA_ARGS__))

struct NodeApi {
  NodeIface iface;
};

struct FindCtx {
  void **results;
  int len;
  int cap;
};

static xmlDocPtr CreateDocument(const NodeApi *api, void *node);
static xmlNodePtr CreateXmlNode(const NodeApi *api, void *node, xmlNodePtr parent);

//////////////////////////////
///////// PUBLIC API /////////
//////////////////////////////

FindCtx *NewFindCtx() { return calloc(1, sizeof(FindCtx)); }

void FreeFindCtx(FindCtx *ctx) {
  if (ctx) {
    free(ctx->results);
    free(ctx);
  }
}

int FindCtxSize(const FindCtx *ctx) { return ctx->len; }

void *FindCtxAt(const FindCtx *ctx, unsigned int index) {
  if (index < ctx->len) {
    return ctx->results[index];
  }
  return NULL;
}

NodeApi *NewNodeApi(NodeIface iface) {
  NodeApi *api = calloc(1, sizeof(NodeApi));
  if (!api) {
    return NULL;
  }
  xmlInitParser();
  api->iface = iface;
  return api;
}

void FreeNodeApi(NodeApi *api) {
  free(api);
  xmlCleanupParser();
}

NodeIface NodeApiGetIface(const NodeApi *api) { return api->iface; }

int NodeApiFind(const NodeApi *api, void *node, const char *query, FindCtx *ctx) {
  int ret = 0;
  xmlDocPtr doc = NULL;
  xmlXPathContextPtr xpathCtx = NULL;
  xmlXPathObjectPtr xpathObj = NULL;

  doc = CreateDocument(api, node);
  if (!doc) {
    ret = -1;
    goto end;
  }
  xpathCtx = xmlXPathNewContext(doc);
  if (!xpathCtx) {
    ret = -2;
    goto end;
  }
  xpathObj = xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
  if (!xpathObj) {
    ret = -3;
    goto end;
  }

  // Get array of results
  xmlNodeSetPtr result = xpathObj->nodesetval;
  xmlNodePtr *nodes = result->nodeTab;
  int size = (result) ? result->nodeNr : 0;

  if (FindCtxSetLen(ctx, size) != 0) {
    ret = -4;
    goto end;
  }

  // Populate array of results
  for (int i = 0; i < size; i++) {
    ctx->results[i] = nodes[i]->_private;
  }

end:
  // Release xml objects
  xmlFreeDoc(doc);
  xmlXPathFreeContext(xpathCtx);
  xmlXPathFreeObject(xpathObj);

  if (ret != 0) {
    // Reset ctx
    FindCtxSetLen(ctx, 0);
  }
  return ret;
}

//////////////////////////////
///////// PRIVATE API ////////
//////////////////////////////

int FindCtxSetLen(FindCtx *ctx, int len) {
  if (len > ctx->cap) {
    ctx->results = realloc(ctx->results, len * sizeof(void *));
    if (ctx->results == NULL) {
      ctx->cap = ctx->len = 0;
      return -1;
    }
    ctx->cap = len;
  }
  ctx->len = len;
  return 0;
}

int FindCtxGetCap(const FindCtx *ctx) { return ctx->cap; }

void **FindCtxGetResults(const FindCtx *ctx) { return ctx->results; }

static xmlNodePtr CreateXmlNode(const NodeApi *api, void *node,
																xmlNodePtr parent) {
  const char *internal_type = GET(node, InternalType);
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
  const char *token = GET(node, Token);
  if (token) {
    if (!xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(token))) {
      goto error;
    }
  }

  // Roles
  int roles_size = GET(node, RolesSize);
  for (int i = 0; i < roles_size; i++) {
    uint16_t role = GET(node, RoleAt, i);
    const char *role_name = RoleNameForId(role);
    if (role_name != NULL) {
      if (!xmlNewProp(xmlNode, BAD_CAST(role_name), NULL)) {
        goto error;
      }
    }
  }

  // Recursivelly visit all children
  int children_size = GET(node, ChildrenSize);
  for (int i = 0; i < children_size; i++) {
    void *child = GET(node, ChildAt, i);
    if (!CreateXmlNode(api, child, xmlNode)) {
      goto error;
    }
  }
  return xmlNode;

error:
  xmlFreeNode(xmlNode);
  return NULL;
}

static xmlDocPtr CreateDocument(const NodeApi *api, void *node) {
  xmlDocPtr doc = xmlNewDoc(BAD_CAST("1.0"));
  if (!doc) {
    return NULL;
  }
  xmlNodePtr xmlNode = CreateXmlNode(api, node, NULL);
  if (!xmlNode) {
    xmlFreeDoc(doc);
    return NULL;
  }
  xmlDocSetRootElement(doc, xmlNode);
  return doc;
}
