#include <mutex>

#include "node.h"
#include "roles.h"

std::once_flag init_once, cleanup_once;

void Node::initialize()
{
  std::call_once(init_once, []() { xmlInitParser(); });
}

void Node::cleanup()
{
  std::call_once(cleanup_once, []() { xmlCleanupParser(); });
}

Node::Node(std::string internal_type) : internal_type(internal_type), parent(NULL), xpathCtx(NULL), doc(NULL) {}

Node::~Node()
{
  printf("DEALLOCATED NODE\n");
  if (xpathCtx)
  {
    xmlXPathFreeContext(xpathCtx);
  }
  if (doc)
  {
    xmlFreeDoc(doc);
  }
  xpathCtx = NULL;
  doc = NULL;
}

void Node::add_child(Node *child)
{
  if (child->parent)
  {
    throw std::runtime_error("child was already added");
  }
  this->children.push_back(child);
  child->parent = this;
}

Node *Node::go_to_parent(uint32_t jumps)
{
  auto node = this;

  for (int i = 0; i < jumps; i++)
  {
    node = node->parent;
    if (node == NULL)
    {
      break;
    }
  }
  return node;
}

void Node::add_role(uint16_t role)
{
  this->roles.push_back(role);
}

void Node::set_property(const std::string &key, const std::string &value)
{
  this->properties[key] = value;
}

void Node::print_to(std::ostringstream &stream, int level)
{
  for (int i = 0; i < level; i++)
  {
    stream << "\t";
  }
  stream << "[" << this->internal_type;
  if (!this->token.empty())
  {
    stream << " token=\"" << this->token << "\"";
  }
  for (auto role : this->roles)
  {
    stream << " " << role_name_for_id(role);
  }
  for (auto prop : this->properties)
  {
    stream << " prop:" << prop.first << "=\"" << prop.second << "\"";
  }
  stream << "]";
  if (this->children.size() > 0)
  {
    stream << ":";
  }
  stream << "\n";

  for (auto child : this->children)
  {
    child->print_to(stream, level + 1);
  }
}

std::string Node::as_string()
{
  std::ostringstream stream;
  print_to(stream, 0);
  return stream.str();
}

std::vector<Node *> Node::find(const char *query)
{
  create_document();
  create_xpath_context();
  return evaluate_query(query);
}

void Node::create_document()
{
  if (doc != NULL)
  {
    return;
  }
  doc = xmlNewDoc(BAD_CAST("1.0"));
  xmlNodePtr node = recursive_conv(NULL);
  xmlDocSetRootElement(doc, node);
}

xmlNodePtr Node::recursive_conv(xmlNodePtr parent)
{
  xmlNodePtr xmlNode = xmlNewNode(NULL, BAD_CAST(this->internal_type.data()));
  xmlNode->_private = this;
  if (parent)
  {
    xmlAddChild(parent, xmlNode);
  }

  // Token
  if (!this->token.empty())
  {
    xmlNewProp(xmlNode, BAD_CAST("token"), BAD_CAST(this->token.data()));
  }

  // Roles
  for (auto role : this->roles)
  {
    xmlNewProp(xmlNode, BAD_CAST(role_name_for_id(role)), NULL);
  }

  // Recursivelly visit all children
  for (Node *child : this->children)
  {
    child->recursive_conv(xmlNode);
  }
  return xmlNode;
}

void Node::create_xpath_context()
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
  xpathCtx = ctx;
}

std::vector<Node *> Node::evaluate_query(const char *query)
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
