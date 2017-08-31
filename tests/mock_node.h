#ifndef LIBUAST_MOCK_NODE_H_
#define LIBUAST_MOCK_NODE_H_

#include <iostream>
#include <string>
#include <vector>

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

extern "C" {
#include "node_iface.h"

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

static int RolesSize(const void *node) {
  return ((Node *)node)->roles.size();
}

static uint16_t RoleAt(const void *node, int index) {
  return ((Node *)node)->roles.at(index);
}

static int PropertiesSize(const void *node) {
  return ((Node *)node)->properties.size();
}

static const char *PropertyAt(const void *node, int index) {
  return ((Node *)node)->properties.at(index).data();
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
      .PropertyAt = PropertyAt,
  };
}

static Node *IdentifierMock(std::string name) {
  Node *id = new Node("Identifier");
  id->token = name;
  id->AddRole(1);
  return id;
}

static Node *AssignMock() {
  Node *assign = new Node("Assign");
  assign->AddRole(130);
  return assign;
}

static Node *LiteralMock(std::string token) {
  Node *literal = new Node("NumLiteral");
  literal->token = token;
  literal->AddRole(118);
  return literal;
}

static Node *ModuleMock() {
  Node *module = new Node("Module");
  module->AddRole(36);
  return module;
}

static Node *SumMock() {
  Node *sum = new Node("Sum");
  sum->AddRole(41);
  return sum;
}

static Node *MultMock() {
  Node *mult = new Node("Mult");
  mult->AddRole(43);
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
}

#endif  // LIBUAST_MOCK_NODE_H_
