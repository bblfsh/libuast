#ifndef LUAST_SRC_UAST_PRIVATE_H_
#define LUAST_SRC_UAST_PRIVATE_H_

#include <libxml/tree.h>
#include "uast.h"
#include "find-ctx.h"
// These functions are used internally for testing and not exported.

// Sets the length of a find_ctx and allocates memory for the results array
// if needed.
// Returns 0 if the length was changed correctly.
int find_ctx_set_len(find_ctx *ctx, int len);

// Returns the total capacity of the internal buffer.
int find_ctx_get_cap(const find_ctx *ctx);

// Returns the pointer to the array of results.
void **find_ctx_get_results(const find_ctx *ctx);

#endif  // LUAST_SRC_UAST_PRIVATE_H_
