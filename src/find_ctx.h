#ifndef LIBUAST_FIND_CTX_H_
#define LIBUAST_FIND_CTX_H_

typedef struct FindCtx FindCtx;

// Creates a new find context that might be used by `NodeApiFind()` to store
// the results.
// Once you are done using it, it should be released by using `FreeFindCtx()`
//
// It returns NULL if the find_ctx could not be allocated sucessfully.
FindCtx *NewFindCtx();

// Returns the number of results
int FindCtxSize(const FindCtx *ctx);

// Returns the result at the given index.
void *FindCtxAt(const FindCtx *ctx, unsigned int index);

// Releases all the memory used by a find_ctx
void FreeFindCtx(FindCtx *ctx);

#endif  // LIBUAST_FIND_CTX_H_
