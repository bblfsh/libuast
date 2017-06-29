
#include <vector>
#include <map>
#include <string>

#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#include "node.h"

class UAST
{
public:
  static void initialize();
  static void cleanup();

  UAST(Node *node);
  ~UAST();

  std::vector<Node *> find(const char *query);

private:
  xmlXPathContextPtr xpathCtx;
  xmlDocPtr doc;
  Node *root_node;

  void createDocument();
  void createXPathContext();
  std::vector<Node *> evaluateQuery(const char *query);
};
