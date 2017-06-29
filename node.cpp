
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "node.h"

#define MAX_CHILDREN 100

Node *node_new(const char *name)
{
  Node *node = (Node *)calloc(1, sizeof(Node));
  node->internal_type = name;
  return node;
}

void node_add_role(Node *node, uint16_t)
{
}

void node_add_child(Node *parent, Node *child)
{
  if (!parent || !child)
  {
    return;
  }
  if (!parent->children)
  {
    parent->children = (Node **)malloc(MAX_CHILDREN * sizeof(Node *));
    parent->children_size = 0;
  }
  parent->children[parent->children_size] = child;
  parent->children_size++;
}

void node_print(Node *node)
{
  printf("NODE <%s>\n", node->internal_type);
}

void __node_free(Node *node)
{
  if (node)
  {
    free(node->children);
    node->children = NULL;
    free(node);
  }
}
