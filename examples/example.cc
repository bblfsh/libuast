#include <cstdint>

#include <iostream>
#include <string>
#include <tuple>
#include <vector>

#include "src/uast.h"

struct position {
  uint32_t offset;
  uint32_t line;
  uint32_t col;

  bool operator!=(const position& other) {
    return offset != other.offset || line != other.line || col != other.col;
  }
};

const position NO_POSITION = {0, 0, 0};

class Node {
 public:
  std::string internal_type;
  std::string token;

  std::vector<Node *> children;
  std::vector<uint16_t> roles;
  std::vector<std::tuple<std::string, std::string>> properties;

  position start_position;
  position end_position;

  Node(std::string i) : internal_type(i), start_position(NO_POSITION), end_position(NO_POSITION) {}

  void AddChild(Node *node) { children.push_back(node); }

  void AddRole(uint16_t role) { roles.push_back(role); }

  void SetStartPosition(position p) { start_position = p; }
  void SetEndPosition(position p) { end_position = p; }
};

static const char *InternalType(NodeHandle node) {
  return ((Node *)node)->internal_type.data();
}

static const char *Token(NodeHandle node) {
  return ((Node *)node)->token.data();
}

static size_t ChildrenSize(NodeHandle node) {
  return ((Node *)node)->children.size();
}

static NodeHandle ChildAt(NodeHandle node, int index) {
  return (NodeHandle)(((Node *)node)->children.at(index));
}

static size_t RolesSize(NodeHandle node) {
  return ((Node *)node)->roles.size();
}

static uint16_t RoleAt(NodeHandle node, int index) {
  return ((Node *)node)->roles.at(index);
}

static size_t PropertiesSize(NodeHandle node) {
  return ((Node *)node)->properties.size();
}

static const char *PropertyKeyAt(NodeHandle node, int index) {
  return std::get<0>(((Node *)node)->properties.at(index)).data();
}

static const char *PropertyValueAt(NodeHandle node, int index) {
  return std::get<1>(((Node *)node)->properties.at(index)).data();
}

static bool HasStartOffset(NodeHandle node) {
  return ((Node *)node)->start_position != NO_POSITION;
}

static uint32_t StartOffset(NodeHandle node) {
  return ((Node *)node)->start_position.offset;
}

static bool HasStartLine(NodeHandle node) {
  return ((Node *)node)->start_position != NO_POSITION;
}

static uint32_t StartLine(NodeHandle node) {
  return ((Node *)node)->start_position.line;
}

static bool HasStartCol(NodeHandle node) {
  return ((Node *)node)->start_position != NO_POSITION;
}

static uint32_t StartCol(NodeHandle node) {
  return ((Node *)node)->start_position.col;
}

static bool HasEndOffset(NodeHandle node) {
  return ((Node *)node)->end_position != NO_POSITION;
}

static uint32_t EndOffset(NodeHandle node) {
  return ((Node *)node)->end_position.offset;
}

static bool HasEndLine(NodeHandle node) {
  return ((Node *)node)->end_position != NO_POSITION;
}

static uint32_t EndLine(NodeHandle node) {
  return ((Node *)node)->end_position.line;
}

static bool HasEndCol(NodeHandle node) {
  return ((Node *)node)->end_position != NO_POSITION;
}

static uint32_t EndCol(NodeHandle node) {
  return ((Node *)node)->end_position.col;
}

int main() {
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
      .PropertyKeyAt = PropertyKeyAt,
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

  Nodes *nodes = UastFilter(ctx, NodeHandle(&root), "/compilation_unit//identifier");
  if (!nodes) {
    char *error = LastError();
    std::cerr << "libuast.find() failed: " << error;
    free(error);
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
