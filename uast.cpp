
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "uast.h"

#define MAX_CHILDREN 100

static xmlNodePtr recursiveConv(Node *node, xmlNodePtr parent)
{
  xmlNodePtr xmlNode = xmlNewNode(NULL, BAD_CAST(node->internal_type));
  xmlNode->_private = node;
  if (parent)
  {
    xmlAddChild(parent, xmlNode);
  }

  if (node->token != NULL)
  {
    xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(node->token));
  }
  // for (auto role : node->roles)
  // {
  //   xmlNewProp(xmlNode, "role." + role, NULL);
  // }
  uint32_t size = node->children_size;
  Node **children = node->children;
  for (int i = 0; i < size; i++)
  {
    recursiveConv(children[i], xmlNode);
  }
  return xmlNode;
}

void UAST::initialize()
{
  xmlInitParser();
}

void UAST::cleanup()
{
  xmlCleanupParser();
}

UAST::UAST(Node *root) : root_node(root), xpathCtx(NULL), doc(NULL) {}

UAST::~UAST()
{
  xmlXPathFreeContext(xpathCtx);
  xmlFreeDoc(doc);
  xpathCtx = NULL;
  doc = NULL;
}

std::vector<Node *> UAST::find(const char *query)
{
  createDocument();
  createXPathContext();
  return evaluateQuery(query);
}

void UAST::createDocument()
{
  if (doc != NULL)
  {
    return;
  }
  doc = xmlNewDoc(BAD_CAST("1.0"));
  xmlNodePtr node = recursiveConv(root_node, NULL);
  xmlDocSetRootElement(doc, node);
  printf("created doc\n");
}

void UAST::createXPathContext()
{
  if (xpathCtx != NULL)
  {
    return;
  }
  xmlXPathContextPtr ctx = xmlXPathNewContext(doc);
  if (ctx == NULL)
  {
    throw std::runtime_error("unable to create new XPath context");
  }
  // if (xmlXPathRegisterNs(ctx, BAD_CAST "uast", BAD_CAST "http://www.example.com/uast") != 0)
  // {
  //   throw std::runtime_error("unable to register NS with prefix");
  // }
  printf("created XPathContext\n");
  xpathCtx = ctx;
}

std::vector<Node *> UAST::evaluateQuery(const char *query)
{
  auto xpathObj = xmlXPathEvalExpression(BAD_CAST(query), xpathCtx);
  if (xpathObj == NULL)
  {
    throw std::runtime_error("unable to evaluate xpath expression");
  }

  xmlNodeSetPtr result = xpathObj->nodesetval;
  int size = (result) ? result->nodeNr : 0;
  auto nodes = result->nodeTab;

  std::vector<Node *> uast;
  uast.reserve(size);

  for (int i = 0; i < size; i++)
  {
    uast.push_back((Node *)nodes[i]->_private);
  }

  xmlXPathFreeObject(xpathObj);
  return move(uast);
}
