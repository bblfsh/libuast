#ifndef LIBUAST_NODE_IFACE_H_
#define LIBUAST_NODE_IFACE_H_

#include <stdint.h>

// This interface must be implemented to create a NodeApi.
typedef struct NodeIface {
  const char *(*InternalType)(const void *);
  const char *(*Token)(const void *);

  // Children
  int (*ChildrenSize)(const void *);
  void *(*ChildAt)(const void *, int);

  // Roles
  int (*RolesSize)(const void *);
  uint16_t (*RoleAt)(const void *, int);

  // Properties
  int (*PropertiesSize)(const void *);
  const char *(*PropertyAt)(const void *, int);
} NodeIface;

#endif  // LIBUAST_NODE_IFACE_H_
