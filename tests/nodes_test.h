#ifndef LIBUAST_NODES_TEST_H_
#define LIBUAST_NODES_TEST_H_


#include <cstdbool>
#include <cstdio>
#include <cstring>

#include <iostream>
#include <string>
#include <vector>

extern "C" {

#include <CUnit/Basic.h>

#include "mock_node.h"
#include "roles.h"
#include "testing_tools.h"
#include "uast.h"
#include "uast_private.h"

bool EqualFindCtx(const FindCtx *c1, const FindCtx *c2) {
  if (FindCtxSize(c1) != FindCtxSize(c2)) {
    return false;
  }
  for (int i = 0; i < FindCtxSize(c1); i++) {
    if (FindCtxAt(c1, i) != FindCtxAt(c2, i)) {
      return false;
    }
  }
  return true;
}

void testNewNode() {
  NodeIface iface = MockIface();
  NodeApi *api = NewNodeApi(iface);

  CU_ASSERT_FATAL(api != NULL);
  NodeIface stored_iface = NodeApiGetIface(api);
  CU_ASSERT_FATAL(memcmp(&iface, &stored_iface, sizeof(NodeIface)) == 0);

  FreeNodeApi(api);
}

void testFindContext() {
  FindCtx *ctx = NewFindCtx();
  CU_ASSERT_FATAL(ctx != NULL);
  CU_ASSERT_FATAL(FindCtxGetResults(ctx) == NULL);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 0);
  CU_ASSERT_FATAL(FindCtxGetCap(ctx) == 0);

  // First resize (size=10)
  CU_ASSERT_FATAL(FindCtxSetLen(ctx, 10) == 0);
  void *tmp1 = FindCtxGetResults(ctx);
  CU_ASSERT_FATAL(tmp1 != NULL);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 10);
  CU_ASSERT_FATAL(FindCtxGetCap(ctx) == 10);

  // Second resize (size=5)
  CU_ASSERT_FATAL(FindCtxSetLen(ctx, 5) == 0);
  CU_ASSERT_FATAL(tmp1 == FindCtxGetResults(ctx));
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 5);
  CU_ASSERT_FATAL(FindCtxGetCap(ctx) == 10);

  // Second resize (size=1024)
  CU_ASSERT_FATAL(FindCtxSetLen(ctx, 1024) == 0);
  void *tmp2 = FindCtxGetResults(ctx);
  CU_ASSERT_FATAL(tmp2 != NULL);
  CU_ASSERT_FATAL(tmp1 != tmp2);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 1024);
  CU_ASSERT_FATAL(FindCtxGetCap(ctx) == 1024);

  FreeFindCtx(ctx);
}

void testNodeFindPointers() {
  NodeIface iface = MockIface();
  NodeApi *api = NewNodeApi(iface);

  Node module = Node("Module");
  Node assign_0 = Node("Assign");
  Node assign_1 = Node("Assign");
  Node assign_2 = Node("Assign");
  module.AddChild(&assign_0);
  module.AddChild(&assign_1);
  module.AddChild(&assign_2);

  FindCtx *ctx = NewFindCtx();
  CU_ASSERT_FATAL(NodeApiFind(api, &module, "/Module/*", ctx) == 0);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 3);
  CU_ASSERT_FATAL(FindCtxAt(ctx, 0) == &assign_0);
  CU_ASSERT_FATAL(FindCtxAt(ctx, 1) == &assign_1);
  CU_ASSERT_FATAL(FindCtxAt(ctx, 2) == &assign_2);

  FreeFindCtx(ctx);
  FreeNodeApi(api);
}

void testNodeFindCount() {
  NodeApi *api = NewNodeApi(MockIface());

  Node *root = NewMockTree();
  FindCtx *ctx = NewFindCtx();
  FindCtx *ctx2 = NewFindCtx();

  // Total number of nodes
  CU_ASSERT_FATAL(NodeApiFind(api, root, "//*", ctx) == 0);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 14);

  // Total number of Modules
  CU_ASSERT_FATAL(NodeApiFind(api, root, "//Module", ctx) == 0);
  CU_ASSERT_FATAL(NodeApiFind(api, root, "//*[@roleFile]", ctx2) == 0);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 1);
  CU_ASSERT_FATAL(FindCtxAt(ctx, 0) == root);
  CU_ASSERT_FATAL(EqualFindCtx(ctx, ctx2));

  // Total number of assigns
  CU_ASSERT_FATAL(NodeApiFind(api, root, "//Assign", ctx) == 0);
  CU_ASSERT_FATAL(NodeApiFind(api, root, "//*[@roleAssignment]", ctx2) == 0);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 3);
  CU_ASSERT_FATAL(EqualFindCtx(ctx, ctx2));

  // Total number of identifiers
  CU_ASSERT_FATAL(NodeApiFind(api, root, "//Identifier", ctx) == 0);
  CU_ASSERT_FATAL(
      NodeApiFind(api, root, "//*[@roleSimpleIdentifier]", ctx2) == 0);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 6);
  CU_ASSERT_FATAL(EqualFindCtx(ctx, ctx2));

  FreeFindCtx(ctx);
  FreeNodeApi(api);
}

void testNodeFindToken() {
  NodeApi *api = NewNodeApi(MockIface());

  Node *root = NewMockTree();
  FindCtx *ctx = NewFindCtx();

  CU_ASSERT_FATAL(NodeApiFind(api, root, "/Module//*[@token='1']", ctx) == 0);
  CU_ASSERT_FATAL(FindCtxSize(ctx) == 1);
  Node *node = (Node *)FindCtxAt(ctx, 0);
  CU_ASSERT_FATAL(node->token == "1");
  CU_ASSERT_FATAL(node->internal_type == "NumLiteral");

  FreeFindCtx(ctx);
  FreeNodeApi(api);
}

void testFailingNewNodeApi() {
  fail_calloc = true;
  CU_ASSERT_FATAL(NewNodeApi(MockIface()) == NULL);
  fail_calloc = false;
}

void testFailingNewFindContext() {
  fail_calloc = true;
  CU_ASSERT_FATAL(NewFindCtx() == NULL);
  fail_calloc = false;
}

void testWrongXpath() {
  NodeIface iface = MockIface();
  NodeApi *api = NewNodeApi(iface);
  Node module = Node("Module");

  FindCtx *ctx = NewFindCtx();

  CU_ASSERT_FATAL(NodeApiFind(api, &module, "/Module/", ctx) == -3);

  FreeFindCtx(ctx);
  FreeNodeApi(api);
}

void _testNodeFindError(int expected_error) {
  NodeIface iface = MockIface();
  NodeApi *api = NewNodeApi(iface);
  Node module = Node("Module");
  Node child = Node("Child");
  module.AddChild(&child);

  FindCtx *ctx = NewFindCtx();

  // Pretend ctx is not empty
  FindCtxSetLen(ctx, 2);

  CU_ASSERT_FATAL(NodeApiFind(api, &module, "/Module", ctx) ==
                  expected_error);
  CU_ASSERT_FATAL(FindCtxAt(ctx, 0) == 0);

  FreeFindCtx(ctx);
  FreeNodeApi(api);
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

#endif  // LIBUAST_NODES_TEST_H_
