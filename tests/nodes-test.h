#include <iostream>
#include <string>
#include <vector>
#include "mock-node.h"

extern "C" {

#include <CUnit/Basic.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "private.h"
#include "roles.h"
#include "testing-tools.h"
#include "uast.h"

bool equal_find_ctx(const find_ctx *c1, const find_ctx *c2) {
  if (find_ctx_get_len(c1) != find_ctx_get_len(c2)) {
    return false;
  }
  for (int i = 0; i < find_ctx_get_len(c1); i++) {
    if (find_ctx_get(c1, i) != find_ctx_get(c2, i)) {
      return false;
    }
  }
  return true;
}

void testNewNode() {
  node_iface iface = mock_iface();
  node_api *api = new_node_api(iface);

  CU_ASSERT_FATAL(api != NULL);
  node_iface stored_iface = node_api_get_iface(api);
  CU_ASSERT_FATAL(memcmp(&iface, &stored_iface, sizeof(node_iface)) == 0);

  free_node_api(api);
}

void testFindContext() {
  find_ctx *ctx = new_find_ctx();
  CU_ASSERT_FATAL(ctx != NULL);
  CU_ASSERT_FATAL(find_ctx_get_results(ctx) == NULL);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 0);
  CU_ASSERT_FATAL(find_ctx_get_cap(ctx) == 0);

  // First resize (size=10)
  CU_ASSERT_FATAL(find_ctx_set_len(ctx, 10) == 0);
  void *tmp1 = find_ctx_get_results(ctx);
  CU_ASSERT_FATAL(tmp1 != NULL);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 10);
  CU_ASSERT_FATAL(find_ctx_get_cap(ctx) == 10);

  // Second resize (size=5)
  CU_ASSERT_FATAL(find_ctx_set_len(ctx, 5) == 0);
  CU_ASSERT_FATAL(tmp1 == find_ctx_get_results(ctx));
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 5);
  CU_ASSERT_FATAL(find_ctx_get_cap(ctx) == 10);

  // Second resize (size=1024)
  CU_ASSERT_FATAL(find_ctx_set_len(ctx, 1024) == 0);
  void *tmp2 = find_ctx_get_results(ctx);
  CU_ASSERT_FATAL(tmp2 != NULL);
  CU_ASSERT_FATAL(tmp1 != tmp2);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 1024);
  CU_ASSERT_FATAL(find_ctx_get_cap(ctx) == 1024);

  free_find_ctx(ctx);
}

void testNodeFindPointers() {
  node_iface iface = mock_iface();
  node_api *api = new_node_api(iface);

  Node module = Node("Module");
  Node assign_0 = Node("Assign");
  Node assign_1 = Node("Assign");
  Node assign_2 = Node("Assign");
  module.add_child(&assign_0);
  module.add_child(&assign_1);
  module.add_child(&assign_2);

  find_ctx *ctx = new_find_ctx();
  CU_ASSERT_FATAL(node_api_find(api, ctx, &module, "/Module/*") == 0);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 3);
  CU_ASSERT_FATAL(find_ctx_get(ctx, 0) == &assign_0);
  CU_ASSERT_FATAL(find_ctx_get(ctx, 1) == &assign_1);
  CU_ASSERT_FATAL(find_ctx_get(ctx, 2) == &assign_2);

  free_find_ctx(ctx);
  free_node_api(api);
}

void testNodeFindCount() {
  node_api *api = new_node_api(mock_iface());

  Node *root = new_mock_tree();
  find_ctx *ctx = new_find_ctx();
  find_ctx *ctx2 = new_find_ctx();

  // Total number of nodes
  CU_ASSERT_FATAL(node_api_find(api, ctx, root, "//*") == 0);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 14);

  // Total number of Modules
  CU_ASSERT_FATAL(node_api_find(api, ctx, root, "//Module") == 0);
  CU_ASSERT_FATAL(node_api_find(api, ctx2, root, "//*[@roleFile]") == 0);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 1);
  CU_ASSERT_FATAL(find_ctx_get(ctx, 0) == root);
  CU_ASSERT_FATAL(equal_find_ctx(ctx, ctx2));

  // Total number of assigns
  CU_ASSERT_FATAL(node_api_find(api, ctx, root, "//Assign") == 0);
  CU_ASSERT_FATAL(node_api_find(api, ctx2, root, "//*[@roleAssignment]") == 0);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 3);
  CU_ASSERT_FATAL(equal_find_ctx(ctx, ctx2));

  // Total number of identifiers
  CU_ASSERT_FATAL(node_api_find(api, ctx, root, "//Identifier") == 0);
  CU_ASSERT_FATAL(
      node_api_find(api, ctx2, root, "//*[@roleSimpleIdentifier]") == 0);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 6);
  CU_ASSERT_FATAL(equal_find_ctx(ctx, ctx2));

  free_find_ctx(ctx);
  free_node_api(api);
}

void testNodeFindToken() {
  node_api *api = new_node_api(mock_iface());

  Node *root = new_mock_tree();
  find_ctx *ctx = new_find_ctx();

  CU_ASSERT_FATAL(node_api_find(api, ctx, root, "/Module//*[@token='1']") == 0);
  CU_ASSERT_FATAL(find_ctx_get_len(ctx) == 1);
  Node *node = (Node *)find_ctx_get(ctx, 0);
  CU_ASSERT_FATAL(node->token == "1");
  CU_ASSERT_FATAL(node->internal_type == "NumLiteral");

  free_find_ctx(ctx);
  free_node_api(api);
}

void testFailingNewNodeApi() {
  fail_calloc = true;
  CU_ASSERT_FATAL(new_node_api(mock_iface()) == NULL);
  fail_calloc = false;
}

void testFailingNewFindContext() {
  fail_calloc = true;
  CU_ASSERT_FATAL(new_find_ctx() == NULL);
  fail_calloc = false;
}

void testWrongXpath() {
  node_iface iface = mock_iface();
  node_api *api = new_node_api(iface);
  Node module = Node("Module");

  find_ctx *ctx = new_find_ctx();

  CU_ASSERT_FATAL(node_api_find(api, ctx, &module, "/Module/") == -3);

  free_find_ctx(ctx);
  free_node_api(api);
}

void _testNodeFindError(int expected_error) {
  node_iface iface = mock_iface();
  node_api *api = new_node_api(iface);
  Node module = Node("Module");
  Node child = Node("Child");
  module.add_child(&child);

  find_ctx *ctx = new_find_ctx();

  // Pretend ctx is not empty
  find_ctx_set_len(ctx, 2);

  CU_ASSERT_FATAL(node_api_find(api, ctx, &module, "/Module") ==
                  expected_error);
  CU_ASSERT_FATAL(find_ctx_get(ctx, 0) == 0);

  free_find_ctx(ctx);
  free_node_api(api);
}

void testFailingNewXMLDoc() {
  fail_xmlNewDoc = true;
  _testNodeFindError(-1);
  fail_xmlNewDoc = false;
}

void testFailingNewXMLNode() {
  fail_xmlNewNode = true;
  _testNodeFindError(-1);
  fail_xmlNewNode = false;
}

void testFailingNewXMLProc() {
  fail_xmlNewProc = true;
  _testNodeFindError(-1);
  fail_xmlNewProc = false;
}

void testFailingXMLAddChild() {
  fail_xmlAddChild = true;
  _testNodeFindError(-1);
  fail_xmlAddChild = false;
}

void testFailingNewXMLContext() {
  fail_xmlXPathNewContext = true;
  _testNodeFindError(-2);
  fail_xmlXPathNewContext = false;
}

void testFailingCtxSetLen() {
  fail_realloc = true;
  _testNodeFindError(-4);
  fail_realloc = false;
}
}
