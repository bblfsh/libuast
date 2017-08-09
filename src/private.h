#ifndef LUAST_SRC_PRIVATE_H_
#define LUAST_SRC_PRIVATE_H_

#include "find-ctx.h"

// Mostly used internally by the library it sets the lengths of an find_ctx and
// allocated the needed memory in the results array if needed.
// It returns 0 if the length was changed correctly.
int find_ctx_set_len(find_ctx *ctx, int len);

// Returns the total capacity of the internal buffer. Used internally for
// testing.
int find_ctx_get_cap(const find_ctx *ctx);

// Returns the pointer to the array of results. Used internally for testing.
// `find_ctx_get()` is safer and the recomended API to read the results.
void **find_ctx_get_results(const find_ctx *ctx);

#endif  // LUAST_SRC_PRIVATE_H_
