extern "C" {
#include <CUnit/Basic.h>
}

#include "nodes-test.h"
#include "roles-test.h"

#define ADD_TEST(__SUITE__, __MESSAGE__, __FUNC__)             \
  if (CU_add_test(__SUITE__, __MESSAGE__, __FUNC__) == NULL) { \
    CU_cleanup_registry();                                     \
    return CU_get_error();                                     \
  }

int main() {
  /* initialize the CUnit test registry */
  if (CUE_SUCCESS != CU_initialize_registry()) {
    return CU_get_error();
  }

  /* add a suite to the registry */
  CU_pSuite pSuite = CU_add_suite("Suite_1", NULL, NULL);
  if (pSuite == NULL) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  /* add the tests to the suite */
  /* NOTE - ORDER IS IMPORTANT */
  ADD_TEST(pSuite, "test of role_name_for_id()", testRoles);
  ADD_TEST(pSuite, "test of new_node_api()", testNewNode);
  ADD_TEST(pSuite, "test of new_find_ctx()", testFindContext);
  ADD_TEST(pSuite, "test of node_find() pointers", testNodeFindPointers);
  ADD_TEST(pSuite, "test of node_find() counting", testNodeFindCount);
  ADD_TEST(pSuite, "test of node_find() with tokens", testNodeFindToken);

  /* Run all tests using the CUnit Basic interface */
  CU_basic_set_mode(CU_BRM_VERBOSE);
  CU_basic_run_tests();
  CU_pRunSummary summary = CU_get_run_summary();
  unsigned int exitValue = summary->nTestsFailed + summary->nAssertsFailed;

  CU_cleanup_registry();
  int cunit_error = CU_get_error();
  if (cunit_error != 0) {
    return cunit_error;
  } else {
    return exitValue;
  }
}
