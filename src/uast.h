#ifndef LIBUAST_UAST_H_
#define LIBUAST_UAST_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "node_iface.h"
#include "nodes.h"

// Uast stores the general context required for library functions.
// It must be initialized with `UastNew` passing a valid implementation of the
// `NodeIface` interface.
// Once it is not used anymore, it shall be released calling `UastFree`.
typedef struct Uast Uast;

// An UastIterator is used to keep the state of the current iteration over the tree.
// It's initialized with UastIteratorNew and freed with UastIteratorFree.
typedef struct UastIterator UastIterator;

typedef enum { PREORDER, POSTORDER, LEVELORDER } TreeOrder;

// Uast needs a node implementation in order to work. This is needed
// because the data structure of the node itself is not defined by this
// library, instead it provides an interface that is expected to be satisfied by
// the binding providers.
//
// This architecture allows libuast to work with every language's native node
// data structures.
//
// Returns NULL if the Uast can not initialized.
Uast *UastNew(NodeIface iface);

// Releases Uast resources.
void UastFree(Uast *ctx);

// Returns the list of native root nodes that satisfy the xpath query,
// or NULL if there was any error.
//
// An XPath Query must follow the XML Path Language (XPath) Version 1 spec.
// For further information about xpath and its syntax checkout:
// https://www.w3.org/TR/xpath/
//
// A node will be mapped to the following XML representation:
// ```
// <{{INTERNAL_TYPE}} token={{TOKEN}} role{{ROLE[n]}} prop{{PROP[n]}}>
//   ... children
// </{{INTERNAL_TYPE}}>
// ```
//
// An example in Python:
// ```
// <NumLiteral token="2" roleLiteral roleSimpleIdentifier></NumLiteral>
// ```
Nodes *UastFilter(const Uast *ctx, void *node, const char *query);

UastIterator *UastIteratorNew(const Uast *ctx, void *node, TreeOrder order);
void UastIteratorFree(UastIterator *iter);
void *UastIteratorNext(UastIterator *iter);

// Returns a string with the latest error.
// It may be an empty string if there's been no error.
//
// Memory for the string is obtained with malloc, and can be freed with free.
char *LastError(void);

#ifdef __cplusplus
}  // extern "C"
#endif

#endif  // LIBUAST_UAST_H_
