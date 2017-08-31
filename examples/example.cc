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

  void AddChild(Node *node) { children.push_back(node); }

  void AddRole(uint16_t role) { roles.push_back(role); }
};

static const char *InternalType(const void *node) {
  return ((Node *)node)->internal_type.data();
}

static const char *Token(const void *node) {
  return ((Node *)node)->token.data();
}

static int ChildrenSize(const void *node) {
  return ((Node *)node)->children.size();
}

static void *ChildAt(const void *node, int index) {
  return ((Node *)node)->children.at(index);
}

static int RolesSize(const void *node) { return ((Node *)node)->roles.size(); }

static uint16_t RoleAt(const void *node, int index) {
  return ((Node *)node)->roles.at(index);
}

static int PropertiesSize(const void *node) {
  return ((Node *)node)->properties.size();
}

static const char *PropertyAt(const void *node, int index) {
  return ((Node *)node)->properties.at(index).data();
}

int main(int argc, char **argv) {
  Node root = Node("compilation_unit");
  root.AddRole(2);

  Node node1 = Node("class");
  Node node2 = Node("identifier");
  node2.AddRole(1);

  Node node3 = Node("block");
  Node node4 = Node("method");
  Node node5 = Node("identifier");
  Node node6 = Node("block");
  Node node8 = Node("loop");

  root.AddChild(&node1);

  // class NAME { BLOCK }
  node1.AddChild(&node2);
  node1.AddChild(&node3);

  // BLOCK { method }
  node3.AddChild(&node4);

  // method identifier { block }
  node4.AddChild(&node5);
  node4.AddChild(&node6);

  // block { loop }
  node6.AddChild(&node8);

  Uast *ctx = UastNew(NodeIface{
      .InternalType = InternalType,
      .Token = Token,
      .ChildrenSize = ChildrenSize,
      .ChildAt = ChildAt,
      .RolesSize = RolesSize,
      .RoleAt = RoleAt,
      .PropertiesSize = PropertiesSize,
      .PropertyAt = PropertyAt,
  });

  Nodes *nodes = UastFilter(ctx, &root, "/compilation_unit//identifier");
  if (!nodes) {
    std::cerr << "libuast.find() failed" << std::endl;
    return -1;
  }

  // Iterate over results and print them to stdout
  for (int i = 0; i < NodesSize(nodes); i++) {
    Node *node = (Node *)NodeAt(nodes, i);
    std::cout << node->internal_type << std::endl;
  }

  NodesFree(nodes);
  UastFree(ctx);

  return 0;
}
