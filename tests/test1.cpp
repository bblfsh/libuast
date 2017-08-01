#include <iostream>
#include "uast.h"

class Node
{
public:
  Node(std::string i) : internal_type(i) {}
  std::string internal_type;
  std::string token;

  std::vector<Node *> children;
  std::vector<uint16_t> roles;

  void add_child(Node *node)
  {
    children.push_back(node);
  }

  void add_role(uint16_t role)
  {
    roles.push_back(role);
  }

  std::string as_string()
  {
    return internal_type;
  }
};

const char *
get_internal_type(const void *node)
{
  return ((Node *)node)->internal_type.data();
}

const char *
get_token(const void *node)
{
  return ((Node *)node)->token.data();
}

int get_children_size(const void *node)
{
  return ((Node *)node)->children.size();
}

void *get_child(const void *node, int index)
{
  return ((Node *)node)->children.at(index);
}

int get_roles_size(const void *node)
{
  return ((Node *)node)->roles.size();
}

uint16_t get_role(const void *node, int index)
{
  return ((Node *)node)->roles.at(index);
}

UAST get_c_api()
{
  return UAST(NodeImpl{
      .internal_type = get_internal_type,
      .token = get_token,
      .children_size = get_children_size,
      .child = get_child,
      .roles_size = get_roles_size,
      .role = get_role,
  });
}

int main(int argc, char **argv)
{
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

  auto api = get_c_api();
  auto results = api.find(&root, "/compilation_unit//identifier");
  for (auto node : results)
  {
    std::cout << ((Node *)node)->as_string() << std::endl;
  }

  return 0;
}
