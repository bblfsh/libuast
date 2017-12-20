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
// It's initialized with UastIteratorNew, used with UastIteratorNext and freed
// with UastIteratorFree.
typedef struct UastIterator UastIterator;

typedef enum { PRE_ORDER, POST_ORDER, LEVEL_ORDER } TreeOrder;

// Uast needs a node implementation in order to work. This is needed
// because the data structure of the node itself is not defined by this
// library, instead it provides an interface that is expected to be satisfied by
// the binding providers.
//
// This architecture allows libuast to work with every language's native node
// data structures.
//
// Returns NULL and sets LastError if the Uast couldn't initialize.
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
//
// It will return an error if the query has a return type that is not a
// node list. In that case, you should use one of the typed filter functions
// (`UastFilterBool`, `UastFilterNumber` or `UastFilterString`).
//
Nodes *UastFilter(const Uast *ctx, void *node, const char *query);

// Returns a integer value as result of executing the XPath query with bool result,
// with `1` meaning `true` and `0` false. It returns -1 if there is any error.
// The parameters have the same meaning as `UastFilter`.
//
int UastFilterBool(const Uast *ctx, void *node, const char *query);

// Returns a `double` value as result of executing the XPath query with number result.
// The parameters have the same meaning as `UastFilter`.
//
double UastFilterNumber(const Uast *ctx, void *node, const char *query);

// Returns a `const char*` value as result of executing the XPath query with
// a string result. The parameters have the same meaning as `UastFilter`.
//
const char *UastFilterString(const Uast *ctx, void *node, const char *query);

// Create a new UastIterator pointer. This will allow you to traverse the UAST
// calling UastIteratorNext. The node argument will be user as the root node of
// the iteration. The TreeOrder argument specifies the traversal mode. It can be
// PRE_ORDER, POST_ORDER or LEVEL_ORDER. Once you've used the UastIterator, it must
// be frees using UastIteratorFree.
//
// Returns NULL and sets LastError if the UastIterator couldn't initialize.
UastIterator *UastIteratorNew(const Uast *ctx, void *node, TreeOrder order);

// Frees a UastIterator.
void UastIteratorFree(UastIterator *iter);

// Retrieve the next node of the traversal of an UAST tree or NULL if the
// traversal has finished.
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
