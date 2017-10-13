#include <cstdint>

#include <iostream>
#include <optional>
#include <string>
#include <tuple>
#include <vector>

#include "src/uast.h"

struct position {
  uint32_t offset;
  uint32_t col;
  uint32_t line;
};

class Node {
 public:
  std::string internal_type;
  std::string token;

  std::vector<Node *> children;
  std::vector<uint16_t> roles;
  std::vector<std::tuple<std::string, std::string>> properties;

  std::optional<position> start_position;
  std::optional<position> end_position;

  Node(std::string i) : internal_type(i) {}

  void AddChild(Node *node) { children.push_back(node); }

  void AddRole(uint16_t role) { roles.push_back(role); }

  void SetStartPosition(position p) { start_position = p; }
  void SetEndPosition(position p) { end_position = p; }
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

static const char *PropertyKeyAt(const void *node, int index) {
  return std::get<0>(((Node *)node)->properties.at(index)).data();
}

static const char *PropertyValueAt(const void *node, int index) {
  return std::get<1>(((Node *)node)->properties.at(index)).data();
}

static bool HasStartOffset(const void *node) {
  return ((Node *)node)->start_position.has_value();
}

static uint32_t StartOffset(const void *node) {
  std::optional<position> p = ((Node *)node)->start_position;
  return p.has_value() ? p.value().offset : 0;
}

static bool HasStartLine(const void *node) {
  return ((Node *)node)->start_position.has_value();
}

static uint32_t StartLine(const void *node) {
  std::optional<position> p = ((Node *)node)->start_position;
  return p.has_value() ? p.value().line : 0;
}

static bool HasStartCol(const void *node) {
  return ((Node *)node)->start_position.has_value();
}

static uint32_t StartCol(const void *node) {
  std::optional<position> p = ((Node *)node)->start_position;
  return p.has_value() ? p.value().col : 0;
}

static bool HasEndOffset(const void *node) {
  return ((Node *)node)->start_position.has_value();
}

static uint32_t EndOffset(const void *node) {
  std::optional<position> p = ((Node *)node)->start_position;
  return p.has_value() ? p.value().offset : 0;
}

static bool HasEndLine(const void *node) {
  return ((Node *)node)->start_position.has_value();
}

static uint32_t EndLine(const void *node) {
  std::optional<position> p = ((Node *)node)->start_position;
  return p.has_value() ? p.value().line : 0;
}

static bool HasEndCol(const void *node) {
  return ((Node *)node)->start_position.has_value();
}

static uint32_t EndCol(const void *node) {
  std::optional<position> p = ((Node *)node)->start_position;
  return p.has_value() ? p.value().col : 0;
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
      .PropertyKeyAt = PropertyValueAt,
      .PropertyValueAt = PropertyValueAt,
      .HasStartOffset = HasStartOffset,
      .StartOffset = StartOffset,
      .HasStartLine = HasStartLine,
      .StartLine = StartLine,
      .HasStartCol = HasStartCol,
      .StartCol = StartCol,
      .HasEndOffset = HasEndOffset,
      .EndOffset = EndOffset,
      .HasEndLine = HasEndLine,
      .EndLine = EndLine,
      .HasEndCol = HasEndCol,
      .EndCol = EndCol,
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
