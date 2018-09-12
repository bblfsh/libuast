#ifndef LIBUAST_MOCK_NODE_H_
#define LIBUAST_MOCK_NODE_H_

#include <cstdint>

#include <iostream>
#include <string>
#include <vector>
#include <map>

#include "libuast.h"

const std::string keyType = "@type";
const std::string keyRoles = "@role";
const std::string keyToken = "@token";
const std::string keyPos = "@pos";

struct position {
  int offset;
  int line;
  int col;

  bool operator!=(const position& other) {
    return offset != other.offset || line != other.line || col != other.col;
  }
};

const position NO_POSITION = {-1, -1, -1};

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

Node* newObject(std::string typ) {
  Node* n = new Node(NODE_OBJECT);
  n->SetChild(keyType, typ);
  return n;
}

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

static NodeIface* newIfaceMock() {
  auto iface = (NodeIface){
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
  auto out = new(NodeIface);
  *out = iface;
  return out;
}

static auto mockIface = newIfaceMock();

static Uast* NewUastMock() {
  return UastNew(mockIface, 0);
}

static Node *IdentifierMock(std::string name) {
  Node *id = newObject("Identifier");
  id->AddRole(1);
  id->SetChild("level", "0");
  id->SetChild(keyToken, name);
  id->SetStartPosition({100, 20, 10});
  return id;
}

static Node *AssignMock() {
  Node *assign = newObject("Assign");
  assign->AddRole(3); // Operator
  assign->AddRole(4); // Binary
  assign->AddRole(104); // Assignment
  return assign;
}

static Node *LiteralMock(std::string token) {
  Node *literal = newObject("NumLiteral");
  literal->SetChild(keyToken, token);
  literal->AddRole(18); // Expression
  literal->AddRole(88); // Literal
  literal->AddRole(95); // Number
  return literal;
}

static Node *ModuleMock() {
  Node *module = newObject("Module");
  module->AddRole(34); // File
  module->SetStartPosition({0, 1, 1});
  module->SetEndPosition({2813, 10, 92});
  return module;
}

static Node *SumMock() {
  Node *sum = newObject("Sum");
  sum->AddRole(3); // Operator
  sum->AddRole(4); // Binary
  sum->AddRole(18); // Expression
  sum->AddRole(35); // Add
  return sum;
}

static Node *MultMock() {
  Node *mult = newObject("Mult");
  mult->AddRole(3); // Operator
  mult->AddRole(4); // Binary
  mult->AddRole(18); // Expression
  mult->AddRole(37); // Multiply
  return mult;
}

// Returns a tree equivalent to the following one:
//
// ```
// A = 1
// B = 2
// C = (A+B) * B
// ```
static Node *TreeMock() {
  Node *module = ModuleMock();
  Node *assign_0 = AssignMock();
  Node *assign_1 = AssignMock();
  Node *assign_2 = AssignMock();
  module->AddChild(assign_0);
  module->AddChild(assign_1);
  module->AddChild(assign_2);

  Node *idA_0 = IdentifierMock("A0");
  Node *literal_1 = LiteralMock("1");
  assign_0->AddChild(idA_0);
  assign_0->AddChild(literal_1);

  Node *idB_0 = IdentifierMock("B0");
  Node *literal_2 = LiteralMock("2");
  assign_1->AddChild(idB_0);
  assign_1->AddChild(literal_2);

  Node *sum = SumMock();
  Node *idA_1 = IdentifierMock("A1");
  Node *idB_1 = IdentifierMock("B1");
  sum->AddChild(idA_1);
  sum->AddChild(idB_1);

  Node *mult = MultMock();
  Node *idB_2 = IdentifierMock("B2");
  mult->AddChild(sum);
  mult->AddChild(idB_2);

  Node *idC_0 = IdentifierMock("C0");
  assign_2->AddChild(idC_0);
  assign_2->AddChild(mult);

  return module;
}

#endif  // LIBUAST_MOCK_NODE_H_
