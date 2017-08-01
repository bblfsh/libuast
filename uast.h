#ifndef _UAST
#define _UAST

#include <vector>
#include <string>

#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#include "node_impl.h"

class UAST
{
private:
  NodeImpl impl;

  void checkImpl();
  xmlDocPtr create_document(void *node);
  xmlXPathContextPtr create_xpath_context(xmlDocPtr doc);
  xmlXPathObjectPtr evaluate_xpath(xmlXPathContextPtr ctx, std::string query);
  xmlNodePtr recursive_conv(void *node, xmlNodePtr parent);

public:
  UAST(NodeImpl impl);
  ~UAST();

  std::vector<void *> find(void *node, std::string query);
};

#endif
