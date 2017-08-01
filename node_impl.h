#ifndef _NODE_IMPL
#define _NODE_IMPL

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

typedef struct _nodeImpl
{
  const char *(*internal_type)(const void *);
  const char *(*token)(const void *);

  // Children
  int (*children_size)(const void *);
  void *(*child)(const void *, int);

  // Roles
  int (*roles_size)(const void *);
  uint16_t (*role)(const void *, int);

  // Properties
  // int (*properties_size)(const void *);
  // void *(*property)(const void *, int);
} NodeImpl;

#ifdef __cplusplus
}
#endif

#endif
