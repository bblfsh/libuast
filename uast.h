#ifndef _NODE_API
#define _NODE_API

#include <string>
#include <vector>

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

#include "node_impl.h"

class NodeAPI {
 private:
  NodeImpl impl;

  void checkImpl();
  xmlDocPtr create_document(void *node);
  xmlXPathContextPtr create_xpath_context(xmlDocPtr doc);
  xmlXPathObjectPtr evaluate_xpath(xmlXPathContextPtr ctx, std::string query);
  xmlNodePtr create_xml_node(void *node, xmlNodePtr parent);

 public:
  NodeAPI(NodeImpl impl);
  ~NodeAPI();

  std::vector<void *> find(void *node, std::string query);
};

#endif
