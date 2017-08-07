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

  void add_child(Node *node) { children.push_back(node); }

  void add_role(uint16_t role) { roles.push_back(role); }
};

extern "C" {
#include "node-iface.h"

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

static node_iface mock_iface() {
  return (node_iface){
      .internal_type = get_internal_type,
      .token = get_token,
      .children_size = get_children_size,
      .children = get_child,
      .roles_size = get_roles_size,
      .roles = get_role,
      .properties_size = get_properties_size,
      .properties = get_property,
  };
}

static Node *new_mock_identifier(std::string name) {
  Node *id = new Node("Identifier");
  id->token = name;
  id->add_role(1);
  return id;
}

static Node *new_mock_assign() {
  Node *assign = new Node("Assign");
  assign->add_role(130);
  return assign;
}

static Node *new_mock_literal(std::string token) {
  Node *literal = new Node("NumLiteral");
  literal->token = token;
  literal->add_role(118);
  return literal;
}

static Node *new_mock_module() {
  Node *module = new Node("Module");
  module->add_role(36);
  return module;
}

static Node *new_mock_sum() {
  Node *sum = new Node("Sum");
  sum->add_role(41);
  return sum;
}

static Node *new_mock_mult() {
  Node *mult = new Node("Mult");
  mult->add_role(43);
  return mult;
}

// Returns a tree equivalent to the following one:
//
// ```
// A = 1
// B = 2
// C = (A+B) * B
// ```
static Node *new_mock_tree() {
  Node *module = new_mock_module();
  Node *assign_0 = new_mock_assign();
  Node *assign_1 = new_mock_assign();
  Node *assign_2 = new_mock_assign();
  module->add_child(assign_0);
  module->add_child(assign_1);
  module->add_child(assign_2);

  Node *idA_0 = new_mock_identifier("A");
  Node *literal_1 = new_mock_literal("1");
  assign_0->add_child(idA_0);
  assign_0->add_child(literal_1);

  Node *idB_0 = new_mock_identifier("B");
  Node *literal_2 = new_mock_literal("2");
  assign_1->add_child(idB_0);
  assign_1->add_child(literal_2);

  Node *sum = new_mock_sum();
  Node *idA_1 = new_mock_identifier("A");
  Node *idB_1 = new_mock_identifier("B");
  sum->add_child(idA_1);
  sum->add_child(idB_1);

  Node *mult = new_mock_mult();
  Node *idB_2 = new_mock_identifier("B");
  mult->add_child(sum);
  mult->add_child(idB_2);

  Node *idC_0 = new_mock_identifier("C");
  assign_2->add_child(idC_0);
  assign_2->add_child(mult);

  return module;
}
}
