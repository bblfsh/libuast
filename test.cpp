
#include "uast.h"

void example()
{
  auto root = node_new("compilation_unit");
  auto node1 = node_new("class");
  auto node2 = node_new("identifier");
  auto node3 = node_new("block");
  auto node4 = node_new("method");
  auto node5 = node_new("identifier");
  auto node6 = node_new("block");
  auto node8 = node_new("loop");

  node_add_child(root, node1);

  // class NAME { BLOCK }
  node_add_child(node1, node2);
  node_add_child(node1, node3);

  // BLOCK { method }
  node_add_child(node3, node4);

  // method identifier { block }
  node_add_child(node4, node5);
  node_add_child(node4, node6);

  // block { loop }
  node_add_child(node6, node8);

  auto ast = UAST(root);
  auto results = ast.find("/compilation_unit//identifier");
  for (auto node : results)
  {
    node_print(node);
  }
}

int main(int argc, char **argv)
{
  UAST::initialize();

  example();

  UAST::cleanup();

  return 0;
}