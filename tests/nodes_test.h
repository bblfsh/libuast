#ifndef LIBUAST_NODES_TEST_H_
#define LIBUAST_NODES_TEST_H_

#include <cstdbool>
#include <cstdio>
#include <cstring>

#include <string>
#include <vector>

extern "C" {
#include <CUnit/Basic.h>
}

#include "mock_node.h"
#include "libuast.h"

bool IterEqual(UastIterator *it1, UastIterator *it2) {
  CU_ASSERT_FATAL(it1 != NULL);
  CU_ASSERT_FATAL(it2 != NULL);
  while (true) {
    auto n1 = UastIteratorNext(it1);
    auto n2 = UastIteratorNext(it2);
    if (n1 != n2 || n1 == 0) {
      UastIteratorFree(it1);
      UastIteratorFree(it2);
      return n1 == n2;
    }
  }
}

int IterCount(UastIterator* iter) {
  CU_ASSERT_FATAL(iter != NULL);
  int n = 0;
  while (true) {
    auto node = UastIteratorNext(iter);
    if (!node) break;
    n++;
  }
  UastIteratorFree(iter);
  return n;
}

#define IterExpect(iter, exp) CU_ASSERT_FATAL(IterCount(iter) == exp);

Node* IterOneExpect(UastIterator* iter, int exp) {
  CU_ASSERT_FATAL(iter != NULL);

  NodeHandle n = UastIteratorNext(iter);
  CU_ASSERT_FATAL(n != 0);
  IterExpect(iter, exp-1);
  return (Node*)n;
}

Node* IterOne(UastIterator* iter) {
  return IterOneExpect(iter, 1);
}

bool IsError(Uast* ctx) {
    char* err = UastLastError(ctx);
    if (err) {
      printf("\nerror: %s\n", err);
      free(err);
    }
    return err != NULL;
}

bool UastFilterBool(Uast* ctx, NodeHandle node, char* query, bool* ok) {
  auto iter = UastFilter(ctx, node, query);

  NodeHandle n = UastIteratorNext(iter);
  UastIteratorFree(iter);

  *ok = !IsError(ctx);
  if (!*ok || !n) return false;

  if (UAST_CALL(ctx, Kind, n) != NODE_BOOL) {
    *ok = false;
    UastSetError(ctx, (char*)"value is not bool");
    return false;
  }
  bool v = UAST_CALL(ctx, AsBool, n);
  *ok = !IsError(ctx);
  return v;
}

double UastFilterNumber(Uast* ctx, NodeHandle node, char* query, bool* ok) {
  auto iter = UastFilter(ctx, node, query);

  NodeHandle n = UastIteratorNext(iter);
  UastIteratorFree(iter);

  *ok = !IsError(ctx);
  if (!*ok || !n) return 0;

  auto kind = UAST_CALL(ctx, Kind, n);
  double v = 0;
  if (kind == NODE_INT) {
    v = (double)UAST_CALL(ctx, AsInt, n);
  } else if (kind == NODE_UINT) {
    v = (double)UAST_CALL(ctx, AsUint, n);
  } else {
    v = UAST_CALL(ctx, AsFloat, n);
  }
  *ok = !IsError(ctx);
  return v;
}

const char* UastFilterString(Uast* ctx, NodeHandle node, char* query) {
  auto iter = UastFilter(ctx, node, query);

  NodeHandle n = UastIteratorNext(iter);
  UastIteratorFree(iter);

  if (IsError(ctx) || !n) return NULL;

  return UAST_CALL(ctx, AsString, n);
}

void TestUastFilterPointers() {
  Uast *ctx = NewUastMock();

  Node* module = newObject("Module");
  Node* assign_0 = newObject("Assign");
  Node* assign_1 = newObject("Assign");
  Node* assign_2 = newObject("Assign");
  module->AddChild(assign_0);
  module->AddChild(assign_1);
  module->AddChild(assign_2);

  auto iter = UastFilter(ctx, NodeHandle(module), (char*)"/Module/sub/*");
  CU_ASSERT_FATAL(iter != NULL);
  int i;
  for (i=0; i < 4; i++) {
    auto h = UastIteratorNext(iter);
    if (h == 0) {
      CU_ASSERT_FATAL(i == 3);
      continue;
    }
    if (i == 0) {
      CU_ASSERT_FATAL((Node*)h == assign_0);
    } else if (i == 1) {
      CU_ASSERT_FATAL((Node*)h == assign_1);
    } else if (i == 2) {
      CU_ASSERT_FATAL((Node*)h == assign_2);
    }
  }
  UastIteratorFree(iter);

  UastFree(ctx);
}

void TestUastFilterCount() {
  Uast *ctx = NewUastMock();

  Node *root = TreeMock();
  // Total number of nodes
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*");
  IterExpect(iter, 123); // TODO: this dumps all XPath nodes, not real nodes

  // Total number of Modules
  iter = UastFilter(ctx, NodeHandle(root), (char*)"//Module");
  auto node = IterOne(iter);
  CU_ASSERT_FATAL(node == root);

  iter = UastFilter(ctx, NodeHandle(root), (char*)"//Module");
  auto iter2 = UastFilter(ctx, NodeHandle(root), (char*)"//*[@role='File']");
  IterEqual(iter, iter2);

  // Total number of assigns
  iter = UastFilter(ctx, NodeHandle(root), (char*)"//Assign");
  IterExpect(iter, 3);
  iter = UastFilter(ctx, NodeHandle(root), (char*)"//Assign");
  iter2 = UastFilter(ctx, NodeHandle(root), (char*)"//*[@role='Assignment']");
  IterEqual(iter, iter2);

  // Total number of identifiers
  iter = UastFilter(ctx, NodeHandle(root), (char*)"//Identifier");
  IterExpect(iter, 6);
  iter = UastFilter(ctx, NodeHandle(root), (char*)"//Identifier");
  iter2 = UastFilter(ctx, NodeHandle(root), (char*)"//*[@role='Identifier']");
  IterEqual(iter, iter2);

  UastFree(ctx);
}

void TestUastFilterToken() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();

  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"/Module//*[@token='1']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetToken() == "1");
  CU_ASSERT_FATAL(node->GetType() == "NumLiteral");

  UastFree(ctx);
}

void TestUastFilterProperties() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();

  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@level='0']");
  auto node = IterOneExpect(iter, 6);

  CU_ASSERT_FATAL(node->GetType() == "Identifier");

  UastFree(ctx);
}

void TestUastFilterStartOffset() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@start-offset='0']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetType() == "Module");

  UastFree(ctx);
}

void TestUastFilterStartLine() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@start-line='1']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetType() == "Module");

  UastFree(ctx);
}

void TestUastFilterStartCol() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@start-col='1']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetType() == "Module");

  UastFree(ctx);
}

void TestUastFilterEndOffset() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@end-offset='2813']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetType() == "Module");

  UastFree(ctx);
}

void TestUastFilterEndLine() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@end-line='10']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetType() == "Module");

  UastFree(ctx);
}

void TestUastFilterEndCol() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[@end-col='92']");
  auto node = IterOne(iter);

  CU_ASSERT_FATAL(node->GetType() == "Module");

  UastFree(ctx);
}

void TestUastFunctionLast() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();

  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[last()=@start-offset or @end-offset]");
  IterExpect(iter, 1);

  UastFree(ctx);
}

void TestUastFunctionBoolTrue() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  int res = UastFilterBool(ctx, NodeHandle(root), (char*)"boolean(//*[@start-offset or @end-offset])", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res);

  UastFree(ctx);
}

void TestUastFunctionBoolFalse() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  int res = UastFilterBool(ctx, NodeHandle(root), (char*)"boolean(//*[@blah])", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(!res);

  UastFree(ctx);
}

void TestUastFunctionBoolError() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  int res = UastFilterBool(ctx, NodeHandle(root), (char*)"//*", &ok);
  CU_ASSERT_FATAL(!ok);
  CU_ASSERT_FATAL(strcmp(UastLastError(ctx), ""));

  UastFree(ctx);
}

void TestUastFunctionNumber() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"count(//*)", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res == 123);

  UastFree(ctx);
}
void TestUastFunctionNumberError() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"concat(//*)", &ok);
  CU_ASSERT_FATAL(!ok);
  CU_ASSERT_FATAL(strcmp(UastLastError(ctx), ""));

  UastFree(ctx);
}

void TestUastFunctionString() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"name(//*[1])");
  CU_ASSERT_FATAL(res != NULL);
  CU_ASSERT_FATAL(!strcmp(res, "Module"));

  UastFree(ctx);
}

void TestUastFilterBadQuery() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();

  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//@roleModule");
  IterExpect(iter, 0);

  UastFree(ctx);
}

void TestUastFilterXPathFuncCeiling() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  int res = static_cast<int>(UastFilterNumber(ctx, NodeHandle(root),
                             (char*)"ceiling(//*[1]/@end-offset)", &ok));
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res == 2813);

  UastFree(ctx);
}

void TestUastFilterXPathFuncConcat() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"concat('a', 'b', 'c')");
  CU_ASSERT_FATAL(res != NULL);
  CU_ASSERT_FATAL(!strcmp(res, "abc"));

  UastFree(ctx);
}

void TestUastFilterXPathFuncPosition() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();

  auto iter = UastFilter(ctx, NodeHandle(root), (char*)"//*[position()=1]");
  IterExpect(iter, 51);

  UastFree(ctx);
}

void TestUastFilterXPathFuncLocalName() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"local-name(//*[1])");
  CU_ASSERT_FATAL(res != NULL);
  CU_ASSERT_FATAL(!strcmp(res, "Module"));

  UastFree(ctx);
}

void TestUastFilterXPathFuncString() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"string(count(//*))");
  CU_ASSERT_FATAL(res != NULL);
  CU_ASSERT_FATAL(!strcmp(res, "123"));

  UastFree(ctx);
}

void TestUastFilterXPathFuncSubstring() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"substring(local-name(//*[1]), 1, 3)");
  CU_ASSERT_FATAL(res != NULL);
  CU_ASSERT_FATAL(!strcmp(res, "Mod"));

  UastFree(ctx);
}

void TestUastFilterXPathFuncSubstringBefore() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"substring-before(local-name(//*[1]), 'ule')");

  CU_ASSERT_FATAL(!strcmp(res, "Mod"));
  UastFree(ctx);
}

void TestUastFilterXPathFuncSubstringAfter() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"substring-after(local-name(//*[1]), 'Mod')");
  CU_ASSERT_FATAL(res != NULL);
  CU_ASSERT_FATAL(!strcmp(res, "ule"));

  UastFree(ctx);
}

void TestUastFilterXPathFuncStringLength() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"string-length(string(count(//*)))", &ok);

  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res == 3);
  UastFree(ctx);
}

void TestUastFilterXPathFuncStartsWith() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  bool res = UastFilterBool(ctx, NodeHandle(root), (char*)"starts-with(local-name(//*[1]), 'Mod')", &ok);

  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res);
  UastFree(ctx);
}

void TestUastFilterXPathFuncNormalizeSpace() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"normalize-space(' something ')");

  CU_ASSERT_FATAL(!strcmp(res, "something"));
  UastFree(ctx);
}

void TestUastFilterXPathFuncTranslate() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  const char *res = UastFilterString(ctx, NodeHandle(root), (char*)"translate(local-name(//*[1]), 'Mod', 'Pax')");

  CU_ASSERT_FATAL(!strcmp(res, "Paxule"));
  UastFree(ctx);
}

void TestUastFilterXPathFuncNot() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  bool res = UastFilterBool(ctx, NodeHandle(root), (char*)"not(starts-with(local-name(//*[1]), 'Mod'))",
                            &ok);

  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(!res);
  UastFree(ctx);
}

void TestUastFilterXPathFuncNumber() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"number(string(count(//*)))", &ok);

  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res == 123);
  UastFree(ctx);
}

void TestUastFilterXPathFuncSum() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"sum(//*[@start-col]/@start-col)", &ok);

  CU_ASSERT_FATAL(ok);
  // ModuleMock(startCol = 1) + 3 * (IdentifierMock(startCol = 20))
  CU_ASSERT_FATAL(res == 61);
  UastFree(ctx);
}

void TestUastFilterXPathFuncFloor() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"floor(3.14)", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res == 3);

  UastFree(ctx);
}

void TestUastFilterXPathFuncRound() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  double res = UastFilterNumber(ctx, NodeHandle(root), (char*)"round(3.14)", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res == 3);

  UastFree(ctx);
}

void TestUastFilterXPathFuncTrue() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  bool res = UastFilterBool(ctx, NodeHandle(root), (char*)"true()", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res);

  UastFree(ctx);
}

void TestUastFilterXPathFuncFalse() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  bool res = UastFilterBool(ctx, NodeHandle(root), (char*)"false()", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(!res);

  UastFree(ctx);
}

void TestUastFilterXPathFuncContains() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();
  bool ok;
  bool res = UastFilterBool(ctx, NodeHandle(root), (char*)"contains('abc', 'b')", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(res);

  res = UastFilterBool(ctx, NodeHandle(root), (char*)"contains('abc', 'x')", &ok);
  CU_ASSERT_FATAL(ok);
  CU_ASSERT_FATAL(!res);

  UastFree(ctx);
}

#define assertArray(node) CU_ASSERT_FATAL(node != NULL); CU_ASSERT_FATAL(node->kind == NODE_ARRAY);
#define assertObjType(node, typ) CU_ASSERT_FATAL(node != NULL); CU_ASSERT_FATAL(node->GetType() == typ);
#define assertObjTypeTok(node, typ, token) assertObjType(node, typ); CU_ASSERT_FATAL(node->GetToken() == token);

void TestUastIteratorPreOrder() {
  Uast *ctx = NewUastMock();
  Node *root = TreeMock();

  UastIterator *iter = UastIteratorNew(ctx, NodeHandle(root), PRE_ORDER);
  CU_ASSERT_FATAL(iter != NULL);

  Node *node = (Node *)UastIteratorNext(iter);
  assertObjType(node, "Module");

  node = (Node *)UastIteratorNext(iter);
  assertArray(node); // roles
  node = (Node *)UastIteratorNext(iter);
  assertArray(node); // sub

  node = (Node *)UastIteratorNext(iter);
  assertObjType(node, "Assign");

  node = (Node *)UastIteratorNext(iter);
  assertArray(node); // roles
  node = (Node *)UastIteratorNext(iter);
  assertArray(node); // sub

  node = (Node *)UastIteratorNext(iter);
  assertObjTypeTok(node, "Identifier", "A0");

  node = (Node *)UastIteratorNext(iter);
  assertArray(node); // roles

  node = (Node *)UastIteratorNext(iter);
  assertObjTypeTok(node, "NumLiteral", "1");

  node = (Node *)UastIteratorNext(iter);
  assertArray(node); // roles

  UastIteratorFree(iter);
  UastFree(ctx);
}

void TestXpath() {
  Uast *ctx = NewUastMock();
  Node module = Node("Module");

  CU_ASSERT_FATAL(UastFilter(ctx, NodeHandle(&module), (char*)"/Module/") == NULL);
  char* error = UastLastError(ctx);
  CU_ASSERT_FATAL(error != NULL);
  // TODO: this should be fixed in XPath library
  // CU_ASSERT_FATAL(!strcmp(error, "Invalid expression\n"));

  free(error);
  UastFree(ctx);
}

void TestNodeFindError() {
  Uast *ctx = NewUastMock();
  Node* module = newObject("Module");
  Node* child = newObject("Child");
  module->SetChild("field", child);

  CU_ASSERT_FATAL(UastFilter(ctx, NodeHandle(module), (char*)"/Module") == NULL);

  UastFree(ctx);
}

void TestEmptyResult() {
  Uast *ctx = NewUastMock();
  Node* module = newObject("Module");

  auto iter = UastFilter(ctx, NodeHandle(module), (char*)"//Import[@role='Import']//alias");
  IterExpect(iter, 0);

  UastFree(ctx);
}

#endif  // LIBUAST_NODES_TEST_H_
