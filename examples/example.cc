#include <cstdint>

#include <iostream>
#include <string>
#include <tuple>
#include <vector>
#include <map>

#include "libuast.h"

const std::string keyType = "@type";
const std::string keyRoles = "@role";
const std::string keyToken = "@token";
const std::string keyPos = "@pos";

struct position {
  uint32_t offset;
  uint32_t line;
  uint32_t col;

  bool operator!=(const position& other) {
    return offset != other.offset || line != other.line || col != other.col;
  }
};

const position NO_POSITION = {0, 0, 0};

class Node {
 public:
  NodeKind kind;

  std::string val_string;
  int64_t     val_int;
  uint64_t    val_uint;
  double      val_float;
  bool        val_bool;

  std::vector<Node*> arr;
  std::map<std::string, Node*> obj;

  Node(NodeKind k) : kind(k) {}
  Node(const std::string &v) : kind(NODE_STRING), val_string(v) {}
  Node(const char *v) : kind(NODE_STRING), val_string(v) {}
  Node(int64_t v) : kind(NODE_INT), val_int(v) {}
  Node(uint64_t v) : kind(NODE_UINT), val_uint(v) {}
  Node(double v) : kind(NODE_FLOAT), val_float(v) {}
  Node(bool v) : kind(NODE_BOOL), val_bool(v) {}

  void Append(Node *node) { arr.push_back(node); }

  void SetChild(const std::string &key, Node *n) {
    obj[key] = n;
  }
  void SetChild(const std::string &key, const std::string &val) {
    SetChild(key, new Node(val));
  }
  void SetChild(const std::string &key, const char* val) {
    SetChild(key, new Node(val));
  }
  void SetChild(const std::string &key, int64_t val) {
    SetChild(key, new Node(val));
  }
  void SetChild(const std::string &key, uint64_t val) {
    SetChild(key, new Node(val));
  }
  void SetChild(const std::string &key, double val) {
    SetChild(key, new Node(val));
  }
  void SetChild(const std::string &key, bool val) {
    SetChild(key, new Node(val));
  }
  void AppendChild(const std::string &key, Node *node) {
      Node* arr = obj[key];
      if (!arr) {
        arr = new Node(NODE_ARRAY);
        obj[key] = arr;
      }
      arr->Append(node);
  }

  void AddRole(uint16_t role) {
    AppendChild(keyRoles, new Node(int64_t(role)));
  }
  void AddChild(Node *node) {
    AppendChild("sub", node);
  }

  std::string GetPropString(const std::string &key) {
    Node* n = obj[key];
    if (!n) return "";
    return n->val_string;
  }
  std::string GetType() {
    return GetPropString(keyType);
  }
  std::string GetToken() {
    return GetPropString(keyToken);
  }

  void SetPosition(const std::string &key, position p) {
      Node* ps = new Node(NODE_OBJECT);

      ps->SetChild(keyType, "uast:Position");
      ps->SetChild("offset", new Node(uint64_t(p.offset)));
      ps->SetChild("line", new Node(uint64_t(p.line)));
      ps->SetChild("col", new Node(uint64_t(p.col)));

      Node* pos = obj[keyPos];
      if (!pos) {
        pos = new Node(NODE_OBJECT);
        pos->SetChild(keyType, "uast:Positions");
        obj[keyPos] = pos;
      }
      pos->SetChild(key, ps);
  }
  void SetStartPosition(position p) { SetPosition("start", p); }
  void SetEndPosition(position p) { SetPosition("end", p); }
};

static NodeKind nodeKind(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->kind;
}

static const char *nodeAsString(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->val_string.data();
}

static int64_t nodeAsInt(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->val_int;
}

static uint64_t nodeAsUint(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->val_uint;
}

static double nodeAsFloat(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->val_float;
}

static bool nodeAsBool(const Uast* ctx, NodeHandle node) {
  return ((Node *)node)->val_bool;
}

static size_t nodeSize(const Uast* ctx, NodeHandle node) {
  auto n = (Node *)node;
  if (n->kind == NODE_ARRAY) {
    return n->arr.size();
  }
  return n->obj.size();
}

static const char * nodeKeyAt(const Uast* ctx, NodeHandle node, size_t index) {
  auto n = (Node *)node;
  size_t i = 0;
  for (auto it = n->obj.begin(); it != n->obj.end(); ++it, ++i) {
    if (i == index) return it->first.data();
  }
  return NULL;
}

static NodeHandle nodeValueAt(const Uast* ctx, NodeHandle node, size_t index) {
  auto n = (Node *)node;
  if (n->kind == NODE_ARRAY) {
    if (index >= n->arr.size()) return 0;
    return (NodeHandle)n->arr[index];
  }
  size_t i = 0;
  for (auto it = n->obj.begin(); it != n->obj.end(); ++it, ++i) {
    if (i == index) return (NodeHandle)it->second;
  }
  return 0;
}

static NodeHandle nodeNewObject(const Uast* ctx, size_t size) {
  auto n = new Node(NODE_OBJECT);
  return (NodeHandle)(n);
}

static NodeHandle nodeNewArray(const Uast* ctx, size_t size) {
  auto n = new Node(NODE_ARRAY);
  n->arr.resize(size);
  return (NodeHandle)(n);
}

static NodeHandle nodeNewString(const Uast* ctx, const char * v) {
  auto n = new Node(std::string(v));
  return (NodeHandle)(n);
}

static NodeHandle nodeNewInt(const Uast* ctx, int64_t v) {
  auto n = new Node(v);
  return (NodeHandle)(n);
}

static NodeHandle nodeNewUint(const Uast* ctx, uint64_t v) {
  auto n = new Node(v);
  return (NodeHandle)(n);
}

static NodeHandle nodeNewFloat(const Uast* ctx, double v) {
  auto n = new Node(v);
  return (NodeHandle)(n);
}

static NodeHandle nodeNewBool(const Uast* ctx, bool v) {
  auto n = new Node(v);
  return (NodeHandle)(n);
}

static void nodeSetValue(const Uast* ctx, NodeHandle node, size_t i, NodeHandle v) {
  auto n = (Node*)node;
  n->arr[i] = (Node*)v;
}

static void nodeSetKeyValue(const Uast* ctx, NodeHandle node, const char * k, NodeHandle v) {
  auto n = (Node*)node;
  n->obj[k] = (Node*)v;
}

static NodeIface* newIface() {
  NodeIface iface = (NodeIface){
      .Kind = nodeKind,

      .AsString = nodeAsString,
      .AsInt = nodeAsInt,
      .AsUint = nodeAsUint,
      .AsFloat = nodeAsFloat,
      .AsBool = nodeAsBool,

      .Size = nodeSize,

      .KeyAt = nodeKeyAt,
      .ValueAt = nodeValueAt,

      .NewObject = nodeNewObject,
      .NewArray = nodeNewArray,
      .NewString = nodeNewString,
      .NewInt = nodeNewInt,
      .NewUint = nodeNewUint,
      .NewFloat = nodeNewFloat,
      .NewBool = nodeNewBool,

      .SetValue = nodeSetValue,
      .SetKeyValue = nodeSetKeyValue,
  };
  NodeIface* out = new(NodeIface);
  *out = iface;
  return out;
}

Node* newObject(std::string typ) {
  Node* n = new Node(NODE_OBJECT);
  n->SetChild(keyType, typ);
  return n;
}

int main() {
  NodeIface* iface = newIface();

  Node* root = newObject("compilation_unit");
  root->AddRole(2);

  Node* node1 = newObject("class");
  Node* node2 = newObject("identifier");
  node2->AddRole(1);

  Node* node3 = newObject("block");
  Node* node4 = newObject("method");
  Node* node5 = newObject("identifier");
  Node* node6 = newObject("block");
  Node* node8 = newObject("loop");

  root->AddChild(node1);

  // class NAME { BLOCK }
  node1->AddChild(node2);
  node1->AddChild(node3);

  // BLOCK { method }
  node3->AddChild(node4);

  // method identifier { block }
  node4->AddChild(node5);
  node4->AddChild(node6);

  // block { loop }
  node6->AddChild(node8);

  Uast *ctx = UastNew(iface, 0);

  auto it = UastFilter(ctx, NodeHandle(root), (char*)"//compilation_unit//identifier");
  if (!it) {
    char *error = LastError(ctx);
    std::cerr << "libuast.filter() failed: " << error;
    free(error);
    return -1;
  }

  // Iterate over results and print them to stdout
  Node* node;
  while ((node = (Node *)UastIteratorNext(it)) != NULL) {
    if (node->kind == NODE_OBJECT) {
        std::cout << node << ": " << node->obj[keyType]->val_string << std::endl;
    } else {
        std::cout << node->kind << std::endl;
    }
  }

  UastIteratorFree(it);
  UastFree(ctx);

  return 0;
}
