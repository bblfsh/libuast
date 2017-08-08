#ifndef _TESTING_TOOLS
#define _TESTING_TOOLS

#ifdef TESTING

#include <stdbool.h>
#include <stdlib.h>

#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>

extern bool fail_calloc;
extern bool fail_realloc;
extern bool fail_xmlNewNode;
extern bool fail_xmlNewDoc;
extern bool fail_xmlNewProc;
extern bool fail_xmlAddChild;
extern bool fail_xmlXPathNewContext;

void *mock_calloc(int count, size_t size);
#define calloc mock_calloc

void *mock_realloc(void *ptr, size_t size);
#define realloc mock_realloc

void *mock_xmlNewNode(xmlNsPtr ns, const xmlChar *name);
#define xmlNewNode mock_xmlNewNode

void *mock_xmlNewDoc(const xmlChar *xmlVersion);
#define xmlNewDoc mock_xmlNewDoc

void *mock_xmlNewProp(xmlNodePtr node, const xmlChar *name,
                      const xmlChar *value);
#define xmlNewProp mock_xmlNewProp

void *mock_xmlAddChild(xmlNodePtr parent, xmlNodePtr cur);
#define xmlAddChild mock_xmlAddChild

void *mock_xmlXPathNewContext(xmlDocPtr doc);
#define xmlXPathNewContext mock_xmlXPathNewContext

#endif
#endif
