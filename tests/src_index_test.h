#ifndef LIBUAST_SRC_INDEX_TEST_H_
#define LIBUAST_SRC_INDEX_TEST_H_

#include <cstdio>
#include <cstring>

extern "C" {
#include <CUnit/Basic.h>
}

#include "libuast.h"

static void TestSourceIndex(void) {
  const char src[] = "tёst\ndata\n";
  UastSourceIndex *idx = UastSourceIndexNew((void*)src, sizeof(src));
  CU_ASSERT_FATAL(idx != NULL);

  // Conversions to different offsets
  CU_ASSERT_EQUAL_FATAL(UastSourceIndex_FromUnicode(idx, 0), 0);
  CU_ASSERT_EQUAL_FATAL(UastSourceIndex_FromUnicode(idx, 2), 3);
  CU_ASSERT_EQUAL_FATAL(UastSourceIndex_FromLineCol(idx, 2, 1), 6);

  // Conversion to line-column
  UastLineCol lc = UastSourceIndex_ToLineCol(idx, 8);
  CU_ASSERT_EQUAL_FATAL(lc.line, 2);
  CU_ASSERT_EQUAL_FATAL(lc.col, 3);

  // There should be no error this far
  CU_ASSERT_FATAL(UastSourceIndex_LastError(idx) == NULL);

  // Invalid offset should lead to -1
  CU_ASSERT_EQUAL_FATAL(UastSourceIndex_ToUnicode(idx, sizeof(src)+1), -1);
  char* err = UastSourceIndex_LastError(idx);
  CU_ASSERT_FATAL(err != NULL);
  delete(err);

  // Clear error state
  UastSourceIndex_ClearError(idx);
  CU_ASSERT_FATAL(UastSourceIndex_LastError(idx) == NULL);

  UastSourceIndexFree(idx);
}

#endif  // LIBUAST_SRC_INDEX_TEST_H_
