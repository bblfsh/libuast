#ifndef LIBUAST_NODE_IFACE_H_
#define LIBUAST_NODE_IFACE_H_

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

typedef uintptr_t NodeHandle;

// This interface must be implemented to create a Uast context.
typedef struct NodeIface {
  const char *(*InternalType)(NodeHandle);
  const char *(*Token)(NodeHandle);

  // Children
  size_t (*ChildrenSize)(NodeHandle);
  NodeHandle (*ChildAt)(NodeHandle, int);

  // Roles
  size_t (*RolesSize)(NodeHandle);
  uint16_t (*RoleAt)(NodeHandle, int);

  // Properties
  size_t (*PropertiesSize)(NodeHandle);
  const char *(*PropertyKeyAt)(NodeHandle, int);
  const char *(*PropertyValueAt)(NodeHandle, int);

  // Postion
  bool (*HasStartOffset)(NodeHandle);
  uint32_t (*StartOffset)(NodeHandle);
  bool (*HasStartLine)(NodeHandle);
  uint32_t (*StartLine)(NodeHandle);
  bool (*HasStartCol)(NodeHandle);
  uint32_t (*StartCol)(NodeHandle);

  bool (*HasEndOffset)(NodeHandle);
  uint32_t (*EndOffset)(NodeHandle);
  bool (*HasEndLine)(NodeHandle);
  uint32_t (*EndLine)(NodeHandle);
  bool (*HasEndCol)(NodeHandle);
  uint32_t (*EndCol)(NodeHandle);

} NodeIface;

#endif  // LIBUAST_NODE_IFACE_H_
