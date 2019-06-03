package main

/*
#include "uast.h"
#include <stdlib.h>
*/
import "C"

import (
	"sync"
	"unsafe"

	"github.com/bblfsh/sdk/v3/uast/transformer/positioner"
)

const (
	sizeUastSourceIndex = unsafe.Sizeof(C.UastSourceIndex{})
)

var srcInd = struct {
	sync.RWMutex
	last     Handle
	byHandle map[Handle]*positioner.Index
}{
	byHandle: make(map[Handle]*positioner.Index),
}

// newSourceIndex allocates and populates the UastSourceIndex structure for C code to use.
func newSourceIndex(h Handle) *C.UastSourceIndex {
	v := (*C.UastSourceIndex)(C.malloc(C.size_t(sizeUastSourceIndex)))
	v.handle = C.uintptr_t(h)
	return v
}

//export UastSourceIndexNew
// UastSourceIndexNew creates a positional index for a source file. An index can be used
// to convert byte-based node offsets to Unicode character offsets.
func UastSourceIndexNew(source unsafe.Pointer, size C.size_t) *C.UastSourceIndex {
	index := positioner.NewIndex(cBytes(source, size), &positioner.IndexOptions{
		Unicode: true,
	})
	srcInd.Lock()
	srcInd.last++
	h := srcInd.last
	srcInd.byHandle[h] = index
	srcInd.Unlock()
	return newSourceIndex(h)
}

//export UastSourceIndexFree
// UastSourceIndexFree release all resources associated with an index.
func UastSourceIndexFree(idx *C.UastSourceIndex) {
	if idx == nil {
		return
	}
	h := idx.handle
	C.free(unsafe.Pointer(idx))
	if h == 0 {
		return
	}
	srcInd.Lock()
	delete(srcInd.byHandle, Handle(h))
	srcInd.Unlock()
}

// getSourceIndex returns an index for a given handle. It returns nil if handle is invalid.
func getSourceIndex(h Handle) *positioner.Index {
	srcInd.RLock()
	idx := srcInd.byHandle[h]
	srcInd.RUnlock()
	return idx
}

// convertOffset is a helper to convert one offset to the other, given a conversion function.
func convertOffset(fnc func(*positioner.Index, int) (int, error),
	idx *C.UastSourceIndex, off C.int) C.int {
	if idx == nil || idx.handle == 0 || off < 0 {
		return -1
	}
	index := getSourceIndex(Handle(idx.handle))
	if index == nil {
		return -1
	}
	roff, err := fnc(index, int(off))
	if err != nil {
		// TODO: we should return this error somehow
		//       previously we stored it in Context, but we don't have (nor need) it here
		return -1
	}
	return C.int(roff)
}

// convertToLineCol is a helper to convert one offset to the line-column pair, given a conversion function.
func convertToLineCol(fnc func(*positioner.Index, int) (int, int, error),
	idx *C.UastSourceIndex, off C.int) C.UastLineCol {
	if idx == nil || idx.handle == 0 || off < 0 {
		return C.UastLineCol{-1, -1}
	}
	index := getSourceIndex(Handle(idx.handle))
	if index == nil {
		return C.UastLineCol{-1, -1}
	}
	line, col, err := fnc(index, int(off))
	if err != nil {
		// TODO: we should return this error somehow
		//       previously we stored it in Context, but we don't have (nor need) it here
		return C.UastLineCol{-1, -1}
	}
	var pos C.UastLineCol
	pos.line = C.int(line)
	pos.col = C.int(col)
	return pos
}

//export UastSourceIndexFromLineCol
// UastSourceIndexFromLineCol converts one-based line-column pair (in bytes) in the indexed
// source file to a zero-based byte offset. It return -1 in case of failure.
func UastSourceIndexFromLineCol(idx *C.UastSourceIndex, line, col C.int) C.int {
	if idx == nil || idx.handle == 0 || line < 0 || col < 0 {
		return -1
	}
	index := getSourceIndex(Handle(idx.handle))
	if index == nil {
		return -1
	}
	off, err := index.Offset(int(line), int(col))
	if err != nil {
		// TODO: we should return this error somehow
		//       previously we stored it in Context, but we don't have (nor need) it here
		return -1
	}
	return C.int(off)
}

//export UastSourceIndexToLineCol
// UastSourceIndexToLineCol converts zero-based byte offset in the indexed source
// file to a one-based line and one-based column pair (in bytes).
// It return a UastLineCol with both elements set to -1 in case of failure.
func UastSourceIndexToLineCol(idx *C.UastSourceIndex, off C.int) C.UastLineCol {
	return convertToLineCol((*positioner.Index).LineCol, idx, off)
}

//export UastSourceIndexFromUnicode
// UastSourceIndexFromUnicode converts zero-based Unicode character offset in the indexed
// source file to a zero-based byte offset. It return -1 in case of failure.
func UastSourceIndexFromUnicode(idx *C.UastSourceIndex, off C.int) C.int {
	return convertOffset((*positioner.Index).FromRuneOffset, idx, off)
}

//export UastSourceIndexToUnicode
// UastSourceIndexToUnicode converts zero-based byte offset in the indexed source file to
// a zero-based Unicode character offset. It return -1 in case of failure.
func UastSourceIndexToUnicode(idx *C.UastSourceIndex, off C.int) C.int {
	return convertOffset((*positioner.Index).ToRuneOffset, idx, off)
}

//export UastSourceIndexFromUTF16
// UastSourceIndexFromUTF16 converts zero-based UTF-16 code point offset in the indexed
// source file to a zero-based byte offset. It return -1 in case of failure.
func UastSourceIndexFromUTF16(idx *C.UastSourceIndex, off C.int) C.int {
	return convertOffset((*positioner.Index).FromUTF16Offset, idx, off)
}

//export UastSourceIndexToUTF16
// UastSourceIndexToUTF16 converts zero-based byte offset in the indexed source file to
// a zero-based UTF-16 code point offset. It return -1 in case of failure.
func UastSourceIndexToUTF16(idx *C.UastSourceIndex, off C.int) C.int {
	return convertOffset((*positioner.Index).ToUTF16Offset, idx, off)
}

//export UastSourceIndexToUnicodeLineCol
// UastSourceIndexToUnicodeLineCol converts zero-based byte offset in the indexed source
// file to a one-based line and one-based column pair (in Unicode characters).
// It return a UastLineCol with both elements set to -1 in case of failure.
func UastSourceIndexToUnicodeLineCol(idx *C.UastSourceIndex, off C.int) C.UastLineCol {
	return convertToLineCol((*positioner.Index).ToUnicodeLineCol, idx, off)
}

//export UastSourceIndexToUTF16LineCol
// UastSourceIndexToUTF16LineCol converts zero-based byte offset in the indexed source
// file to a one-based line and one-based column pair (in UTF-16 code units).
// It return a UastLineCol with both elements set to -1 in case of failure.
func UastSourceIndexToUTF16LineCol(idx *C.UastSourceIndex, off C.int) C.UastLineCol {
	return convertToLineCol((*positioner.Index).ToUTF16LineCol, idx, off)
}
