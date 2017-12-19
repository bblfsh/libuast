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
  CU_pSuite suite = CU_add_suite("Suite_1", NULL, NULL);
  if (suite == NULL) {
    CU_cleanup_registry();
    return CU_get_error();
  }

  // add the tests to the suite
  ADD_TEST(suite, "test of RoleNameForId()", TestRoleNameForId);
  ADD_TEST(suite, "test of UastNew()", TestUastNew);
  ADD_TEST(suite, "test of UastFilter() pointers", TestUastFilterPointers);
  ADD_TEST(suite, "test iteration", TestUastIteratorPreOrder);
  ADD_TEST(suite, "test iteration", TestUastIteratorLevelOrder);
  ADD_TEST(suite, "test iteration", TestUastIteratorPostOrder);
  ADD_TEST(suite, "test of UastFilter() counting", TestUastFilterCount);
  ADD_TEST(suite, "test of UastFilter() with tokens", TestUastFilterToken);
  ADD_TEST(suite, "test of UastFilter() with properties", TestUastFilterProperties);
  ADD_TEST(suite, "test of UastFilter() with start offset", TestUastFilterStartOffset);
  ADD_TEST(suite, "test of UastFilter() with start line", TestUastFilterStartLine);
  ADD_TEST(suite, "test of UastFilter() with start col", TestUastFilterStartCol);
  ADD_TEST(suite, "test of UastFilter() with end offset", TestUastFilterEndOffset);
  ADD_TEST(suite, "test of UastFilter() with end line", TestUastFilterEndLine);
  ADD_TEST(suite, "test of UastFilter() with end col", TestUastFilterEndCol);
  ADD_TEST(suite, "test of UastFilter() with position", TestUastFilterPosition);
  ADD_TEST(suite, "test of UastFilter() with last() function", TestUastFunctionLast);
  ADD_TEST(suite, "test of UastFilterBool() with true result", TestUastFunctionBoolTrue);
  ADD_TEST(suite, "test of UastFilterBool() with false result", TestUastFunctionBoolFalse);
  ADD_TEST(suite, "test of UastFilterBool() with error type result", TestUastFunctionBoolError);
  ADD_TEST(suite, "test of UastFilterNumber()", TestUastFunctionNumber);
  ADD_TEST(suite, "test of UastFilterString()", TestUastFunctionString);
  ADD_TEST(suite, "test of UastFilter() with celing() XPath call", TestUastFilterXPathFuncCeiling);
  ADD_TEST(suite, "test of UastFilter() with concat() XPath call", TestUastFilterXPathFuncConcat);
  ADD_TEST(suite, "test of UastFilter() with contains() XPath call", TestUastFilterXPathFuncContains);
  ADD_TEST(suite, "test of UastFilter() with position() XPath call", TestUastFilterXPathFuncPosition);
  ADD_TEST(suite, "test of UastFilter() with local-name() XPath call", TestUastFilterXPathFuncLocalName);
  ADD_TEST(suite, "test of UastFilter() with string() XPath call", TestUastFilterXPathFuncString);
  ADD_TEST(suite, "test of UastFilter() with substring() XPath call", TestUastFilterXPathFuncSubstring);
  ADD_TEST(suite, "test of UastFilter() with substring-before() XPath call", TestUastFilterXPathFuncSubstringBefore);
  ADD_TEST(suite, "test of UastFilter() with substring-after() XPath call", TestUastFilterXPathFuncSubstringAfter);
  ADD_TEST(suite, "test of UastFilter() with string-length() XPath call", TestUastFilterXPathFuncStringLength);
  ADD_TEST(suite, "test of UastFilter() with starts-with() XPath call", TestUastFilterXPathFuncStartsWith);
  ADD_TEST(suite, "test of UastFilter() with normalize-space() XPath call", TestUastFilterXPathFuncStartsWith);
  ADD_TEST(suite, "test of UastFilter() with translate() XPath call", TestUastFilterXPathFuncTranslate);
  ADD_TEST(suite, "test of UastFilter() with not() XPath call", TestUastFilterXPathFuncNot);
  ADD_TEST(suite, "test of UastFilter() with number() XPath call", TestUastFilterXPathFuncNumber);
  ADD_TEST(suite, "test of UastFilter() with sum() XPath call", TestUastFilterXPathFuncSum);
  ADD_TEST(suite, "test of UastFilter() with floor() XPath call", TestUastFilterXPathFuncFloor);
  ADD_TEST(suite, "test of UastFilter() with round() XPath call", TestUastFilterXPathFuncRound);
  ADD_TEST(suite, "test of UastFilter() with true() XPath call", TestUastFilterXPathFuncTrue);
  ADD_TEST(suite, "test of UastFilter() with false() XPath call", TestUastFilterXPathFuncFalse);
  ADD_TEST(suite, "test of UastFilter() with bad query", TestUastFilterBadQuery);
  ADD_TEST(suite, "test failing UastFilter() (bad Xpath)", TestXpath);
  ADD_TEST(suite, "test failing UastFilter() (bad xmlNewDoc)", TestXmlNewDoc);
  ADD_TEST(suite, "test failing UastFilter() (bad xmlNewNode)", TestXmlNewNode);
  ADD_TEST(suite, "test failing UastFilter() (bad xmlNewProc)", TestXmlNewProc);
  ADD_TEST(suite, "test failing UastFilter() (bad xmlAddChild)", TestXmlAddChild);
  ADD_TEST(suite, "test failing UastFilter() (bad xmlNewContext)", TestXmlNewContext);
  ADD_TEST(suite, "test empty UastFilter() result", TestEmptyResult);

  // run all tests using the CUnit Basic interface
  CU_basic_set_mode(CU_BRM_VERBOSE);
  CU_set_error_action(CUEA_ABORT);
  CU_basic_run_tests();
  CU_pRunSummary summary = CU_get_run_summary();
  int exitValue = summary->nTestsFailed + summary->nAssertsFailed;

  CU_cleanup_registry();
  int cunit_error = CU_get_error();
  if (cunit_error != 0) {
    return cunit_error;
  } else {
    return exitValue;
  }
}

