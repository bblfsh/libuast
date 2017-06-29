
typedef struct _position
{
  uint32_t offset;
  uint32_t line;
  uint32_t col;
} Position;

typedef struct _node
{
  const char *internal_type;
  const char *token;

  // Children
  struct _node **children;
  uint32_t children_size;

  // Roles
  uint16_t *roles;
  uint32_t roles_size;

  // Position
  Position start_position;
  Position end_position;

} Node;

Node *node_new(const char *name);
void node_add_role(Node *node, uint16_t);
void node_add_child(Node *parent, Node *child);
void node_print(Node *node);
void __node_free(Node *node);
#define node_free(__NODE__) (__node_free(__NODE__); __NODE__ = NULL;)
