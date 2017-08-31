#include "testing_tools.h"

#ifdef TESTING

bool fail_calloc = false;
bool fail_realloc = false;
bool fail_xmlNewNode = false;
bool fail_xmlNewDoc = false;
bool fail_xmlNewProc = false;
bool fail_xmlAddChild = false;
bool fail_xmlXPathNewContext = false;

#undef calloc
void *MockCalloc(int count, size_t size) {
  if (fail_calloc) {
    return NULL;
  } else {
    return calloc(count, size);
  }
}

#undef realloc
void *MockRealloc(void *ptr, size_t size) {
  if (fail_realloc) {
    return NULL;
  } else {
    return realloc(ptr, size);
  }
}

#undef xmlNewNode
void *MockXmlNewNode(xmlNsPtr ns, const xmlChar *name) {
  if (fail_xmlNewNode) {
    return NULL;
  } else {
    return xmlNewNode(ns, name);
  }
}

#undef xmlNewDoc
void *MockXmlNewDoc(const xmlChar *xmlVersion) {
  if (fail_xmlNewDoc) {
    return NULL;
  } else {
    return xmlNewDoc(xmlVersion);
  }
}

#undef xmlNewProp
void *MockXmlNewProp(xmlNodePtr node, const xmlChar *name,
                     const xmlChar *value) {
  if (fail_xmlNewProc) {
    return NULL;
  } else {
    return xmlNewProp(node, name, value);
  }
}

#undef xmlAddChild
void *MockXmlAddChild(xmlNodePtr parent, xmlNodePtr cur) {
  if (fail_xmlAddChild) {
    return NULL;
  } else {
    return xmlAddChild(parent, cur);
  }
}

#undef xmlXPathNewContext
void *MockXmlXPathNewContext(xmlDocPtr doc) {
  if (fail_xmlXPathNewContext) {
    return NULL;
  } else {
    return xmlXPathNewContext(doc);
  }
}

#endif
