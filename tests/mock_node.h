#ifndef LIBUAST_MOCK_NODE_H_
#define LIBUAST_MOCK_NODE_H_

#include <cstdint>

#include <iostream>
#include <string>
#include <tuple>
#include <vector>

#include "uast.h"

struct position {
  int offset;
  int line;
  int col;

  bool operator!=(const position& other) {
    return offset != other.offset || line != other.line || col != other.col;
  }
};

const position NO_POSITION = {-1, -1, -1};

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

  void AddProperty(const std::string &key, const std::string &value) {
    properties.push_back(make_tuple(key, value));
  }

  void SetStartPosition(position p) { start_position = p; }
  void SetEndPosition(position p) { end_position = p; }
};

static const char *InternalType(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->internal_type.data();
}

static const char *Token(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->token.data();
}

static size_t ChildrenSize(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->children.size();
}

static NodeHandle ChildAt(const Uast* ctx, NodeHandle node, int index) {
  return (NodeHandle)(((Node *)node)->children.at(index));
}

static size_t RolesSize(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->roles.size();
}

static uint16_t RoleAt(const Uast* ctx, NodeHandle node, int index) {
  return ((Node *)node)->roles.at(index);
}

static size_t PropertiesSize(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->properties.size();
}

static const char *PropertyKeyAt(const Uast* ctx, NodeHandle node, int index) {
  return std::get<0>(((Node *)node)->properties.at(index)).data();
}

static const char *PropertyValueAt(const Uast* ctx, NodeHandle node, int index) {
  return std::get<1>(((Node *)node)->properties.at(index)).data();
}

static bool HasStartOffset(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->start_position.offset != -1;
}

static uint32_t StartOffset(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->start_position.offset;
}

static bool HasStartLine(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->start_position.line != -1;
}

static uint32_t StartLine(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->start_position.line;
}

static bool HasStartCol(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->start_position.col != -1;
}

static uint32_t StartCol(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->start_position.col;
}

static bool HasEndOffset(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->end_position != NO_POSITION;
}

static uint32_t EndOffset(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->end_position.offset;
}

static bool HasEndLine(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->end_position != NO_POSITION;
}

static uint32_t EndLine(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->end_position.line;
}

static bool HasEndCol(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->end_position != NO_POSITION;
}

static uint32_t EndCol(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->end_position.col;
}

static NodeIface IfaceMock() {
  return (NodeIface){
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
  };
}

static Node *IdentifierMock(std::string name) {
  Node *id = new Node("Identifier");
  id->token = name;
  id->AddRole(1);
  id->AddProperty("level", "0");
  id->SetStartPosition({100, 20, 10});
  return id;
}

static Node *AssignMock() {
  Node *assign = new Node("Assign");
  assign->AddRole(3); // Operator
  assign->AddRole(4); // Binary
  assign->AddRole(104); // Assignment
  return assign;
}

static Node *LiteralMock(std::string token) {
  Node *literal = new Node("NumLiteral");
  literal->token = token;
  literal->AddRole(18); // Expression
  literal->AddRole(88); // Literal
  literal->AddRole(95); // Number
  return literal;
}

static Node *ModuleMock() {
  Node *module = new Node("Module");
  module->AddRole(34); // File
  module->SetStartPosition({0, 1, 1});
  module->SetEndPosition({2813, 10, 92});
  return module;
}

static Node *SumMock() {
  Node *sum = new Node("Sum");
  sum->AddRole(3); // Operator
  sum->AddRole(4); // Binary
  sum->AddRole(18); // Expression
  sum->AddRole(35); // Add
  return sum;
}

static Node *MultMock() {
  Node *mult = new Node("Mult");
  mult->AddRole(3); // Operator
  mult->AddRole(4); // Binary
  mult->AddRole(18); // Expression
  mult->AddRole(37); // Multiply
  return mult;
}

// Returns a tree equivalent to the following one:
//
// ```
// A = 1
// B = 2
// C = (A+B) * B
// ```
static Node *TreeMock() {
  Node *module = ModuleMock();
  Node *assign_0 = AssignMock();
  Node *assign_1 = AssignMock();
  Node *assign_2 = AssignMock();
  module->AddChild(assign_0);
  module->AddChild(assign_1);
  module->AddChild(assign_2);

  Node *idA_0 = IdentifierMock("A0");
  Node *literal_1 = LiteralMock("1");
  assign_0->AddChild(idA_0);
  assign_0->AddChild(literal_1);

  Node *idB_0 = IdentifierMock("B0");
  Node *literal_2 = LiteralMock("2");
  assign_1->AddChild(idB_0);
  assign_1->AddChild(literal_2);

  Node *sum = SumMock();
  Node *idA_1 = IdentifierMock("A1");
  Node *idB_1 = IdentifierMock("B1");
  sum->AddChild(idA_1);
  sum->AddChild(idB_1);

  Node *mult = MultMock();
  Node *idB_2 = IdentifierMock("B2");
  mult->AddChild(sum);
  mult->AddChild(idB_2);

  Node *idC_0 = IdentifierMock("C0");
  assign_2->AddChild(idC_0);
  assign_2->AddChild(mult);

  return module;
}

#endif  // LIBUAST_MOCK_NODE_H_
