#ifndef _NODE_API
#define _NODE_API

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#include "node-iface.h"

typedef struct _find_ctx {
  void **results;
  int len;
  int cap;
} find_ctx;

// node_api stores all general context required for calling the libuast's api
// It must be initialized with `new_node_api(node_iface)` passing a valid
// implementation of the interface
// Once it is not used anymore, it shall be released by using `free_node_api()`
typedef struct _node_api { node_iface impl; } node_api;

// NodeAPI needs a node implementation in other to work. This is needed
// because the data structure of the node itself is not defined by this
// library, instead it provides an interface that much be satified by the
// bindings.
//
// This architecture allows libuast to run his algoritms on top of nodes
// implemented in other languages (like Python or Go).
//
// Checkout examples/example1.cpp for a C++ example of a valid node
// implementation or the client-python bindings for python:
node_api *new_node_api(node_iface impl);

// Releases all the memory used by the node_api
void free_node_api(node_api *api);

// Creates a new find context that might be used by `node_find()` to store the
// results. Once you are done using it, it should be released by using
// `free_find_ctx()`
find_ctx *new_find_ctx();

// Mostly used internally by the library it sets the lengths of an find_ctx and
// allocated the needed memory in the results array if needed.
int find_ctx_set_len(find_ctx *ctx, int len);

// Releases all the memory used by a find_ctx
void free_find_ctx(find_ctx *ctx);

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
int node_find(node_api *api, find_ctx *ctx, void *node, const char *query);

#endif
