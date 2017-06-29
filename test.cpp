#include <iostream>
#include "node.h"

void example()
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

  auto results = root.find("/compilation_unit//identifier");
  for (auto node : results)
  {
    std::cout << node->as_string() << std::endl;
  }
}

int main(int argc, char **argv)
{
  Node::initialize();

  example();

  Node::cleanup();

  return 0;
}
