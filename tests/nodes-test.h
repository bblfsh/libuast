#include <iostream>
#include <string>
#include <vector>
#include "mock-node.h"

extern "C" {

#include <CUnit/Basic.h>
#include <stdio.h>
#include <string.h>
#include "roles.h"
#include "uast.h"

bool equal_find_ctx(const find_ctx *c1, const find_ctx *c2) {
  if (c1->len != c2->len) {
    return 0;
  }
  for (int i = 0; i < c1->len; i++) {
    if (c1->results[i] != c2->results[i]) {
      return 0;
    }
  }
  return 1;
}

void testNewNode() {
  node_iface iface = mock_iface();
  node_api *api = new_node_api(iface);

  CU_ASSERT(api != NULL);
  CU_ASSERT(memcmp(&iface, &api->impl, sizeof(node_iface)) == 0);

  free_node_api(api);
}

void testFindContext() {
  find_ctx *ctx = new_find_ctx();
  CU_ASSERT(ctx != NULL);
  CU_ASSERT(ctx->results == NULL);
  CU_ASSERT(ctx->len == 0);
  CU_ASSERT(ctx->cap == 0);

  // First resize (size=10)
  CU_ASSERT(find_ctx_set_len(ctx, 10) == 0);
  void *tmp1 = ctx->results;
  CU_ASSERT(tmp1 != NULL);
  CU_ASSERT(ctx->len == 10);
  CU_ASSERT(ctx->cap == 10);

  // Second resize (size=5)
  CU_ASSERT(find_ctx_set_len(ctx, 5) == 0);
  CU_ASSERT(tmp1 == ctx->results);
  CU_ASSERT(ctx->len == 5);
  CU_ASSERT(ctx->cap == 10);

  // Second resize (size=1024)
  CU_ASSERT(find_ctx_set_len(ctx, 1024) == 0);
  CU_ASSERT(ctx->results != NULL);
  CU_ASSERT(tmp1 != ctx->results);
  CU_ASSERT(ctx->len == 1024);
  CU_ASSERT(ctx->cap == 1024);

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
  CU_ASSERT(node_find(api, ctx, &module, "/Module/*") == 0);
  CU_ASSERT(ctx->len == 3);
  CU_ASSERT(ctx->results[0] == &assign_0);
  CU_ASSERT(ctx->results[1] == &assign_1);
  CU_ASSERT(ctx->results[2] == &assign_2);

  free_find_ctx(ctx);
  free_node_api(api);
}

void testNodeFindCount() {
  node_api *api = new_node_api(mock_iface());

  Node *root = new_mock_tree();
  find_ctx *ctx = new_find_ctx();
  find_ctx *ctx2 = new_find_ctx();

  // Total number of nodes
  CU_ASSERT(node_find(api, ctx, root, "//*") == 0);
  CU_ASSERT(ctx->len == 14);

  // Total number of Modules
  CU_ASSERT(node_find(api, ctx, root, "//Module") == 0);
  CU_ASSERT(node_find(api, ctx2, root, "//*[@roleFile]") == 0);
  CU_ASSERT(ctx->len == 1);
  CU_ASSERT(ctx->results[0] == root);
  CU_ASSERT(equal_find_ctx(ctx, ctx2));

  // Total number of assigns
  CU_ASSERT(node_find(api, ctx, root, "//Assign") == 0);
  CU_ASSERT(node_find(api, ctx2, root, "//*[@roleAssignment]") == 0);
  CU_ASSERT(ctx->len == 3);
  CU_ASSERT(equal_find_ctx(ctx, ctx2));

  // Total number of identifiers
  CU_ASSERT(node_find(api, ctx, root, "//Identifier") == 0);
  CU_ASSERT(node_find(api, ctx2, root, "//*[@roleSimpleIdentifier]") == 0);
  CU_ASSERT(ctx->len == 6);
  CU_ASSERT(equal_find_ctx(ctx, ctx2));

  free_find_ctx(ctx);
  free_node_api(api);
}

void testNodeFindToken() {
  node_api *api = new_node_api(mock_iface());

  Node *root = new_mock_tree();
  find_ctx *ctx = new_find_ctx();

  CU_ASSERT(node_find(api, ctx, root, "/Module//*[@token='1']") == 0);
  CU_ASSERT(ctx->len == 1);
  CU_ASSERT(((Node *)ctx->results[0])->token == "1");
  CU_ASSERT(((Node *)ctx->results[0])->internal_type == "NumLiteral");

  free_find_ctx(ctx);
  free_node_api(api);
}
}
