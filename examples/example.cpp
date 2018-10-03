#include <cstdint>

#include <iostream>
#include <string>
#include <tuple>
#include <vector>
#include <map>

#include "libuast.hpp"

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

class Node : public uast::Node<Node*>, public uast::PtrNode<Node*> {
 public:
  NodeKind kind;

  std::string val_string;
  int64_t     val_int;
  uint64_t    val_uint;
  double      val_float;
  bool        val_bool;

  std::vector<Node*> arr;
  std::map<std::string, Node*> obj;

  Node(NodeKind k) : PtrNode(this), kind(k) {}
  Node(const std::string &v) : PtrNode(this), kind(NODE_STRING), val_string(v) {}
  Node(const char *v) : PtrNode(this), kind(NODE_STRING), val_string(v) {}
  Node(int64_t v) : PtrNode(this), kind(NODE_INT), val_int(v) {}
  Node(uint64_t v) : PtrNode(this), kind(NODE_UINT), val_uint(v) {}
  Node(double v) : PtrNode(this), kind(NODE_FLOAT), val_float(v) {}
  Node(bool v) : PtrNode(this), kind(NODE_BOOL), val_bool(v) {}

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


  NodeKind Kind() { return kind; }

  const char* AsString() { return val_string.data(); }
  int64_t     AsInt()    { return val_int; }
  uint64_t    AsUint()   { return val_uint; }
  double      AsFloat()  { return val_float; }
  bool        AsBool()   { return val_bool; }

  size_t Size() {
    if (kind == NODE_ARRAY) {
      return arr.size();
    }
    return obj.size();
  }

  const char* KeyAt(size_t index) {
    size_t i = 0;
    for (auto it = obj.begin(); it != obj.end(); ++it, ++i) {
      if (i == index) return it->first.data();
    }
    return NULL;
  }

  Node* ValueAt(size_t index) {
    if (kind == NODE_ARRAY) {
      if (index >= arr.size()) return 0;
      return arr[index];
    }
    size_t i = 0;
    for (auto it = obj.begin(); it != obj.end(); ++it, ++i) {
      if (i == index) return it->second;
    }
    return NULL;
  }

  void SetValue(size_t i, Node* v) {
    arr[i] = v;
  }

  void SetKeyValue(const char * k, Node* v) {
    obj[k] = v;
  }
};

class Creator : public uast::NodeCreator<Node*> {
public:
    Node* NewObject(size_t size) {
      return new Node(NODE_OBJECT);
    }

    Node* NewArray(size_t size) {
      auto n = new Node(NODE_ARRAY);
      n->arr.resize(size);
      return n;
    }

    Node* NewString(const char * v) {
      return new Node(std::string(v));
    }

    Node* NewInt(int64_t v) {
      return new Node(v);
    }

    Node* NewUint(uint64_t v) {
      return new Node(v);
    }

    Node* NewFloat(double v) {
      return new Node(v);
    }

    Node* NewBool(bool v) {
      return new Node(v);
    }
};

Node* newObject(std::string typ) {
  Node* n = new Node(NODE_OBJECT);
  n->SetChild(keyType, typ);
  return n;
}

int main() {
  // create a class that makes new UAST nodes
  auto creator = new Creator();
  // create an implementation that will handle UAST node operations
  auto impl = new uast::PtrInterface<Node*>(creator);
  // create a new UAST context based on this implementation
  auto ctx = impl->NewContext();

  Node* root = newObject("compilation_unit");
  root->AddRole(uast::Role("File").ID());

  Node* node1 = newObject("class");
  Node* node2 = newObject("identifier");
  node2->AddRole(uast::Role("Identifier").ID());

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

  auto it = ctx->Filter(root, "//compilation_unit//identifier");
  if (!it) {
    ctx->CheckError();
    return -1;
  }

  // Iterate over results and print them to stdout
  while (it->next()) {
    Node* node = it->node();
    if (node->kind == NODE_OBJECT) {
        std::cout << node << ": " << node->obj[keyType]->val_string << std::endl;
    } else {
        std::cout << node->kind << std::endl;
    }
  }

  delete(it);
  delete(ctx);
  delete(impl);
  delete(creator);

  return 0;
}
