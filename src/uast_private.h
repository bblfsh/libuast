#ifndef LIBUAST_UAST_PRIVATE_H_
#define LIBUAST_UAST_PRIVATE_H_

#include <libxml/tree.h>

#include "find_ctx.h"
#include "uast.h"

// These functions are used internally for testing and not exported.

// Sets the length of a find_ctx and allocates memory for the results array
// if needed.
// Returns 0 if the length was changed correctly.
int FindCtxSetLen(FindCtx *ctx, int len);

// Returns the total capacity of the internal buffer.
int FindCtxGetCap(const FindCtx *ctx);

// Returns the pointer to the array of results.
void **FindCtxGetResults(const FindCtx *ctx);

#endif  // LIBUAST_UAST_PRIVATE_H_
