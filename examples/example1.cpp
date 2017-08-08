#include <iostream>
#include <string>
#include <vector>

extern "C" {
#include "src/uast.h"
}

class Node {
 public:
  std::string internal_type;
  std::string token;

  std::vector<Node *> children;
  std::vector<uint16_t> roles;
  std::vector<std::string> properties;

  Node(std::string i) : internal_type(i) {}

  void add_child(Node *node) { children.push_back(node); }

  void add_role(uint16_t role) { roles.push_back(role); }
};

static const char *get_internal_type(const void *node) {
  return ((Node *)node)->internal_type.data();
}

static const char *get_token(const void *node) {
  return ((Node *)node)->token.data();
}

static int get_children_size(const void *node) {
  return ((Node *)node)->children.size();
}

static void *get_child(const void *node, int index) {
  return ((Node *)node)->children.at(index);
}

static int get_roles_size(const void *node) {
  return ((Node *)node)->roles.size();
}

static uint16_t get_role(const void *node, int index) {
  return ((Node *)node)->roles.at(index);
}

static int get_properties_size(const void *node) {
  return ((Node *)node)->properties.size();
}

static const char *get_property(const void *node, int index) {
  return ((Node *)node)->properties.at(index).data();
}

int main(int argc, char **argv) {
  auto root = Node("compilation_unit");
  root.add_role(2);

  auto node1 = Node("class");
  auto node2 = Node("identifier");
  node2.add_role(1);

  auto node3 = Node("block");
  auto node4 = Node("method");
  auto node5 = Node("identifier");
  auto node6 = Node("block");
  auto node8 = Node("loop");

  root.add_child(&node1);

  // class NAME { BLOCK }
  node1.add_child(&node2);
  node1.add_child(&node3);

  // BLOCK { method }
  node3.add_child(&node4);

  // method identifier { block }
  node4.add_child(&node5);
  node4.add_child(&node6);

  // block { loop }
  node6.add_child(&node8);

  auto api = new_node_api(node_iface{
      .internal_type = get_internal_type,
      .token = get_token,
      .children_size = get_children_size,
      .children = get_child,
      .roles_size = get_roles_size,
      .roles = get_role,
      .properties_size = get_properties_size,
      .properties = get_property,
  });

  find_ctx *ctx = new_find_ctx();

  if (node_find(api, ctx, &root, "/compilation_unit//identifier") != 0) {
    std::cerr << "libuast.find() failed" << std::endl;
    return -1;
  }

  // Iterate over results and print them to stdout
  for (int i = 0; i < ctx->len; i++) {
    Node *node = (Node *)ctx->results[i];
    std::cout << node->internal_type << std::endl;
  }

  free_find_ctx(ctx);
  free_node_api(api);

  return 0;
}
