#ifndef UAST_NODE_H_
#define UAST_NODE_H_

#include <stdint.h>

#include <vector>
#include <string>
#include <map>
#include <sstream>

#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

class Position
{
public:
  uint32_t offset;
  uint32_t line;
  uint32_t col;
};

class Node
{
public:
  static void initialize();
  static void cleanup();

  Node(std::string internal_type);
  ~Node();

  std::string internal_type;
  std::string token;
  std::string roles_str;

  std::vector<Node *> children;
  std::vector<uint16_t> roles;
  std::map<std::string, std::string> properties;

  Position start_position;
  Position end_position;

  void add_role(uint16_t role);
  void add_child(Node *child);
  void set_property(const std::string &key, const std::string &value);

  std::string as_string();
  std::vector<Node *> find(const char *query);
  Node *go_to_parent(uint32_t jumps);

private:
  xmlXPathContextPtr xpathCtx;
  xmlDocPtr doc;
  Node *parent;

  void create_document();
  void create_xpath_context();
  std::vector<Node *> evaluate_query(const char *query);

  xmlNodePtr recursive_conv(xmlNodePtr parent);
  void print_to(std::ostringstream &stream, int level);
};

#endif
