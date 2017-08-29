#ifndef LIBUAST_FIND_CTX_H_
#define LIBUAST_FIND_CTX_H_

typedef struct _find_ctx find_ctx;

// Creates a new find context that might be used by `node_api_find()` to store
// the
// results. Once you are done using it, it should be released by using
// `free_find_ctx()`
//
// It returns NULL if the find_ctx could not be allocated sucessfully.
find_ctx *new_find_ctx();

// Returns the number of results
int find_ctx_get_len(const find_ctx *ctx);

// Returns the result at the given index.
void *find_ctx_get(const find_ctx *ctx, unsigned int index);

// Releases all the memory used by a find_ctx
void free_find_ctx(find_ctx *ctx);

#endif  // LIBUAST_FIND_CTX_H_
