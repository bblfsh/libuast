#ifndef LUAST_SRC_NODE_API_H_
#define LUAST_SRC_NODE_API_H_

#include "find-ctx.h"
#include "node-iface.h"

// node_api stores all general context required for calling the libuast's api
// It must be initialized with `new_node_api(node_iface)` passing a valid
// implementation of the interface
// Once it is not used anymore, it shall be released by using `free_node_api()`
typedef struct _node_api node_api;

// NodeAPI needs a node implementation in other to work. This is needed
// because the data structure of the node itself is not defined by this
// library, instead it provides an interface that much be satified by the
// bindings.
//
// This architecture allows libuast to run his algoritms on top of nodes
// implemented in other languages (like Python or Go).
//
// It returns NULL if the find_ctx could not be allocated sucessfully.
node_api *new_node_api(node_iface impl);

// Releases all the memory used by the node_api
void free_node_api(node_api *api);

// Returns the node_iface used by the node_api
node_iface node_api_get_iface(const node_api *api);

// Returns the list of native root nodes that satisfy the xpath query.
// It will return an empty vector if non node matches the query.
//
// A new find_ctx must be created with `new_find_ctx()` to store the results of
// the find operation
//
// Since libuast uses the standard libxml2 library, find can accept any xpath
// query that follows the XML Path Language (XPath) Version 1 spec.
// For further information about xpath and his syntax checkout:
// https://www.w3.org/TR/xpath/
//
// Libuast will map the node into an equivalent XML represention in the
// following way:
// ```
// <{{INTERNAL_TYPE}} token={{TOKEN}} role{{ROLE[n]}} prop{{PROP[n]}}>
//   ... children
// </{{INTERNAL_TYPE}}>
// ```
//
// Real python example:
// ```
// <NumLiteral token="2" roleLiteral roleSimpleIdentifier></NumLiteral>
// ```
//
// It returns 0 if the find query worked correctly, even if it returns 0
// results.
int node_api_find(node_api *api, find_ctx *ctx, void *node, const char *query);

#endif  // LUAST_SRC_NODE_API_H_
