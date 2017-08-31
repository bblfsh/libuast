extern "C" {
#include <CUnit/Basic.h>
}

#include "nodes_test.h"
#include "roles_test.h"

#define ADD_TEST(__SUITE__, __MESSAGE__, __FUNC__)             \
  if (CU_add_test(__SUITE__, __MESSAGE__, __FUNC__) == NULL) { \
    CU_cleanup_registry();                                     \
    return CU_get_error();                                     \
  }

int main() {
  // initialize the CUnit test registry
  if (CUE_SUCCESS != CU_initialize_registry()) {
    return CU_get_error();
  }

  // add a suite to the registry
  CU_pSuite pSuite = CU_add_suite("Suite_1", NULL, NULL);
  if (pSuite == NULL) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  // add the tests to the suite
  ADD_TEST(pSuite, "test of RoleNameForId()", testRoleNameForId);
  ADD_TEST(pSuite, "test of UastNew()", testUastNew);
  ADD_TEST(pSuite, "test failing UastNew() (bad calloc)", testUastNewAlloc);
  ADD_TEST(pSuite, "test of NodesNew()", testNodesNew);
  ADD_TEST(pSuite, "test failing NodesNew() (bad calloc)", testNodesNewAlloc);
  ADD_TEST(pSuite, "test of UastFilter() pointers", testUastFilterPointers);
  ADD_TEST(pSuite, "test of UastFilter() counting", testUastFilterCount);
  ADD_TEST(pSuite, "test of UastFilter() with tokens", testUastFilterToken);
  ADD_TEST(pSuite, "test failing UastFilter() (bad Xpath)", testXpath);
  ADD_TEST(pSuite, "test failing UastFilter() (bad xmlNewDoc)", testXmlNewDoc);
  ADD_TEST(pSuite, "test failing UastFilter() (bad xmlNewNode)", testXmlNewNode);
  ADD_TEST(pSuite, "test failing UastFilter() (bad xmlNewProc)", testXmlNewProc);
  ADD_TEST(pSuite, "test failing UastFilter() (bad xmlAddChild)", testXmlAddChild);
  ADD_TEST(pSuite, "test failing UastFilter() (bad xmlNewContext)", testXmlNewContext);
  ADD_TEST(pSuite, "test failing UastFilter() (bad NodesSetSize)", testNodesSetSize);

  // run all tests using the CUnit Basic interface
  CU_basic_set_mode(CU_BRM_VERBOSE);
  CU_set_error_action(CUEA_ABORT);
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
