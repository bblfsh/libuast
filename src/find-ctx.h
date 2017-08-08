#ifndef _FIND_CTX
#define _FIND_CTX

typedef struct _find_ctx find_ctx;

// Creates a new find context that might be used by `node_api_find()` to store
// the
// results. Once you are done using it, it should be released by using
// `free_find_ctx()`
//
// It returns NULL if the find_ctx could not be allocated sucessfully.
find_ctx *new_find_ctx();

// Mostly used internally by the library it sets the lengths of an find_ctx and
// allocated the needed memory in the results array if needed.
// It returns 0 if the length was changed correctly.
int find_ctx_set_len(find_ctx *ctx, int len);

// Returns the number of results
int find_ctx_get_len(const find_ctx *ctx);

// Returns the total capacity of the internal buffer. Used internally for
// testing.
int find_ctx_get_cap(const find_ctx *ctx);

// Returns the pointer to the array of results. Used internally for testing.
// `find_ctx_get()` is safer and the recomended API to read the results.
void **find_ctx_get_results(const find_ctx *ctx);

// Returns the result at the given index.
void *find_ctx_get(const find_ctx *ctx, unsigned int index);

// Releases all the memory used by a find_ctx
void free_find_ctx(find_ctx *ctx);

#endif
