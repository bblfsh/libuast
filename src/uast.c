
#include "uast.h"
#include "roles.h"

#define GET(__NODE__, __PROP__, ...) \
  (api->impl.__PROP__(__NODE__, ##__VA_ARGS__))

static xmlNodePtr create_xml_node(node_api *api, void *node,
                                  xmlNodePtr parent) {
  const char *internal_type = GET(node, internal_type);
  xmlNodePtr xmlNode = xmlNewNode(NULL, BAD_CAST(internal_type));
  xmlNode->_private = node;
  if (parent) {
    xmlAddChild(parent, xmlNode);
  }

  // Token
  const char *token = GET(node, token);
  if (token) {
    xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(token));
  }

  // Token
  int roles_size = GET(node, roles_size);
  for (int i = 0; i < roles_size; i++) {
    uint16_t role = GET(node, roles, i);
    const char *role_name = role_name_for_id(role);
    if (role_name != NULL) {
      xmlNewProp(xmlNode, BAD_CAST(role_name), NULL);
    }
  }

  // Recursivelly visit all children
  int children_size = GET(node, children_size);
  for (int i = 0; i < children_size; i++) {
    void *child = GET(node, children, i);
    create_xml_node(api, child, xmlNode);
  }
  return xmlNode;
}

static xmlDocPtr create_document(node_api *api, void *node) {
  xmlDocPtr doc = xmlNewDoc(BAD_CAST("1.0"));
  xmlNodePtr xmlNode = create_xml_node(api, node, NULL);
  xmlDocSetRootElement(doc, xmlNode);
  return doc;
}

//////////////////////////////
//////// PUBLIC API /////////
//////////////////////////////

node_api *new_node_api(node_iface iface) {
  xmlInitParser();
  node_api *api = calloc(1, sizeof(node_api));
  api->impl = iface;
  return api;
}

void free_node_api(node_api *api) {
  free(api);
  xmlCleanupParser();
}

find_ctx *new_find_ctx() { return calloc(1, sizeof(find_ctx)); }

void free_find_ctx(find_ctx *ctx) {
  free(ctx->results);
  free(ctx);
}

int find_ctx_set_len(find_ctx *ctx, int len) {
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

int node_find(node_api *api, find_ctx *ctx, void *node, const char *query) {
  xmlDocPtr doc = create_document(api, node);
  xmlXPathContextPtr xpathCtx = xmlXPathNewContext(doc);
  if (xpathCtx == NULL) {
    return -1;
  }
  xmlXPathObjectPtr xpathObj =
      xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
  if (xpathObj == NULL) {
    return -2;
  }
  xmlNodeSetPtr result = xpathObj->nodesetval;

  // Get array of results
  xmlNodePtr *nodes = result->nodeTab;
  int size = (result) ? result->nodeNr : 0;

  find_ctx_set_len(ctx, size);

  // Populate array of results
  for (int i = 0; i < size; i++) {
    ctx->results[i] = nodes[i]->_private;
  }

  // Release xml objects
  xmlFreeDoc(doc);
  xmlXPathFreeContext(xpathCtx);
  xmlXPathFreeObject(xpathObj);

  return 0;
}
