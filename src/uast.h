#ifndef LIBUAST_UAST_H_
#define LIBUAST_UAST_H_

#include "find_ctx.h"
#include "node_iface.h"

// NodeApi stores all general context required for calling the libuast's api
// It must be initialized with `NewNodeApi(NodeIface)` passing a valid
// implementation of the interface
// Once it is not used anymore, it shall be released by using `FreeNodeApi()`
typedef struct NodeApi NodeApi;

// NodeAPI needs a node implementation in other to work. This is needed
// because the data structure of the node itself is not defined by this
// library, instead it provides an interface that much be satified by the
// bindings.
//
// This architecture allows libuast to run his algoritms on top of nodes
// implemented in other languages (like Python or Go).
//
// It returns NULL if the FindCtx could not be allocated sucessfully.
NodeApi *NewNodeApi(NodeIface iface);

// Releases all the memory used by the node_api
void FreeNodeApi(NodeApi *api);

// Returns the node_iface used by the node_api
NodeIface NodeApiGetIface(const NodeApi *api);

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
// It returns 0 if the find query worked correctly, even if it returns 0 results.
int NodeApiFind(const NodeApi *api, void *node, const char *query, FindCtx *ctx);

#endif  // LIBUAST_UAST_H_
