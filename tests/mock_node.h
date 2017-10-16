#ifndef LIBUAST_MOCK_NODE_H_
#define LIBUAST_MOCK_NODE_H_

#include <cstdint>

#include <iostream>
#include <optional>
#include <string>
#include <tuple>
#include <vector>

#include "node_iface.h"

struct position {
  uint32_t offset;
  uint32_t line;
  uint32_t col;
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

  void AddProperty(const std::string &key, const std::string &value) {
    properties.push_back(make_tuple(key, value));
  }

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
  return ((Node *)node)->end_position.has_value();
}

static uint32_t EndOffset(const void *node) {
  std::optional<position> p = ((Node *)node)->end_position;
  return p.has_value() ? p.value().offset : 0;
}

static bool HasEndLine(const void *node) {
  return ((Node *)node)->end_position.has_value();
}

static uint32_t EndLine(const void *node) {
  std::optional<position> p = ((Node *)node)->end_position;
  return p.has_value() ? p.value().line : 0;
}

static bool HasEndCol(const void *node) {
  return ((Node *)node)->end_position.has_value();
}

static uint32_t EndCol(const void *node) {
  std::optional<position> p = ((Node *)node)->end_position;
  return p.has_value() ? p.value().col : 0;
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

  Node *idA_0 = IdentifierMock("A");
  Node *literal_1 = LiteralMock("1");
  assign_0->AddChild(idA_0);
  assign_0->AddChild(literal_1);

  Node *idB_0 = IdentifierMock("B");
  Node *literal_2 = LiteralMock("2");
  assign_1->AddChild(idB_0);
  assign_1->AddChild(literal_2);

  Node *sum = SumMock();
  Node *idA_1 = IdentifierMock("A");
  Node *idB_1 = IdentifierMock("B");
  sum->AddChild(idA_1);
  sum->AddChild(idB_1);

  Node *mult = MultMock();
  Node *idB_2 = IdentifierMock("B");
  mult->AddChild(sum);
  mult->AddChild(idB_2);

  Node *idC_0 = IdentifierMock("C");
  assign_2->AddChild(idC_0);
  assign_2->AddChild(mult);

  return module;
}

#endif  // LIBUAST_MOCK_NODE_H_
