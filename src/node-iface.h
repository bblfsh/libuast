#ifndef _NODE_IMPL
#define _NODE_IMPL

#include <stdint.h>

// It must be intialized by providing implementations to each of the function
// pointers, in order to create an node_api.
typedef struct _node_iface {
  const char *(*internal_type)(const void *);
  const char *(*token)(const void *);

  // Children
  int (*children_size)(const void *);
  void *(*children)(const void *, int);

  // Roles
  int (*roles_size)(const void *);
  uint16_t (*roles)(const void *, int);

  // Properties
  int (*properties_size)(const void *);
  const char *(*properties)(const void *, int);
} node_iface;

#endif
