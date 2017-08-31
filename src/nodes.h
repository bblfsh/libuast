#ifndef LIBUAST_NODES_H_
#define LIBUAST_NODES_H_

typedef struct Nodes Nodes;

// Returns the amount of nodes
int NodesSize(const Nodes *nodes);

// Returns the node at the given index.
void *NodeAt(const Nodes *nodes, int index);

// Releases the resources associated with nodes
void NodesFree(Nodes *nodes);

#endif  // LIBUAST_NODES_H_
