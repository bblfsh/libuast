extern "C" {
#include <CUnit/Basic.h>
#include <stdio.h>
#include <string.h>
#include "roles.h"
#include "uast.h"

static void testRoles(void) {
  // Test two first roles names
  CU_ASSERT(strcmp(role_name_for_id(0), "roleInvalid") == 0);
  CU_ASSERT(strcmp(role_name_for_id(1), "roleSimpleIdentifier") == 0);

  // Automatically test the rest of names
  int nu_roles = 141;
  for (int i = 0; i < nu_roles; i++) {
    const char *role = role_name_for_id(i);
    CU_ASSERT(strlen(role) > 4);
    CU_ASSERT(strncmp(role, "role", 4) == 0);
  }

  // Test out of bounds roles
  for (int i = nu_roles; i < nu_roles + 10; i++) {
    const char *role = role_name_for_id(i);
    CU_ASSERT(role == NULL);
  }
}
}
