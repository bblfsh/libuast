# libuast [![Build Status](https://travis-ci.org/bblfsh/libuast.svg?branch=master)](https://travis-ci.org/bblfsh/libuast) [![codecov](https://codecov.io/gh/bblfsh/libuast/branch/master/graph/badge.svg)](https://codecov.io/gh/bblfsh/libuast)

Libuast is a C library that implements different algorithms that consume the babelfish's UAST in order to query, inspect and process it.

Libuast is decoupled from the UAST data structures. This means that the UAST itself can be stored in any native object of the host language. In order to connect the C uast library with the data structure an implementation of the interface must be provided by the bindings.

## Features

Currently only xpath querying is implemented, it allows to filter branches of the UAST tree that satisfy the xpath query string.

More features may be implemented in the future, like UAST iterators.

## Installation

### Dependencies

- cmake
- libxml2
- libcunit1

#### Ubuntu instructions

```
sudo apt install build-essential cmake libxml2 libxml2-dev libcunit1 libcunit1-dev
```


### Build/Install C API

```
cmake .
make
make install
```

### Run the tests

```
make test
```

## Query language

Any of the [node](https://godoc.org/github.com/bblfsh/sdk/uast#Node) fields can be used for querying, which are mapped in the following way:

* `InternalType` is converted to the element name
* `Token`, if available, is converted to an attribute with `token` as keyword and the actual token as value
* Every `Role` is converted to an attribute concatenating a `role` prefix and the role name in CamelCase.
* Every `Property` is converted to an attribute with the property keyword as keyword and the property value as value
* `StartPosition`, if available, is mapped to three attributes:
  * A `startOffset` attribute, with the offset as value
  * A `startLine` attribute, with the line as value
  * A `startCol` attribute, with the column as value
* `EndPosition`, if available, is mapped to three attributes:
  * A `endOffset` attribute, with the offset as value
  * A `endLine` attribute, with the line as value
  * A `endCol` attribute, with the column as value

which are mapped in to XML in the following way:

```xml
<{{InternalType}}
    token='{{Token}}'
	{{for role in Roles}}
	role{{role}}
	{{for key, value in Properties}}
	{{key}}='{{value}}'
	startOffset={{StartPosition.Offset}}
	startLine={{StartPosition.Line}}
	startCol={{StartPosition.Col}}
	endOffset={{EndPosition.Offset}}
	endLine={{EndPosition.Line}}
	endCol={{EndPosition.Col}}>
	{{Children}}
</{{InternalType}}>
```

This means that both language specific queries (`InternalType`, `Properties`)
and language agnostic queries (`Roles`) can be done.  Check [the official
documentation](https://doc.bblf.sh/user/uast-querying.html) for example queries.

## Implementing the node interface

`libuast` is built to be easily bindable,
and to allow a native data structure for a [`Node`](https://godoc.org/github.com/bblfsh/sdk/uast#Node) in every language,
as provided by the protobuf generator.

That's why the library provides an interface to this `Node` data structure that must be implemented.
Concretely `NodeIface`, that is used to initialize the `Uast` struct:

```c
Uast *ctx = Node((NodeIface){
    .InternalType = InternalType,
    .Token = Token,
    .ChildrenSize = ChildrenSize,
    .ChildAt = ChildAt,
    .RolesSize = RolesSize,
    .RoleAt = RoleAt,
    .PropertiesSize = PropertiesSize,
    .PropertyKeyAt = PropertyKeyAt,
    .PropertyValueAt = PropertyValueAt,
    .HasStartOffset = HasStartOffset,
    .StartOffset = StartOffset,
    .HasStartLine = HasStartLine,
    .StartLine = StartLine,
    .HasStartCol = HasStartCol,
    .StartCol = StartCol,
    .HasEndOffset = HasEndOffset,
    .EndOffset = EndOffset,
    .HasEndLine = HasEndLine,
    .EndLine = EndLine,
    .HasEndCol = HasEndCol,
    .EndCol = EndCol,
});
```

`NodeIface` holds the functions that need the be executed when the library needs to access some of the properties of the node, such as `internal_type`, `token`, `children`, ...

Here you can see several examples of the `Uast`:
- [C++ node](https://github.com/bblfsh/libuast/blob/master/tests/mock_node.h)
- [Python node](https://github.com/bblfsh/client-python/blob/master/bblfsh/pyuast.c)
- [Go node](https://github.com/bblfsh/client-go/blob/master/tools/bindings.h)

Once the `Uast` context is created, it can be easily used to run xpath queries against the native nodes:

```c
// creating a Uast as explained above
Uast *ctx = CreateContextFromIface();

// get a c pointer to the native node
void *node = (void*)pointerToNativeNode;

// consume the Uast API (xpath in this case)
Nodes *nodes = UastFilter(ctx, node, "//NumLiteral")
```

### Running an xpath query

At this point, you might have already created your very first binding of libuast. Let's start playing with real stuff!

#### XPath querying

XPath allows to filter the whole UAST using the [xpath syntax](https://www.w3.org/TR/xpath/). It can be really useful to extract features from the code and thanks to the annotation system implemented by babelfish, it can be done in an universal fashion.


In libuast, xpath querying is performed by the `UastFilter` function. This function takes a pointer to the `Uast` context, a pointer to the root node, and the xpath query string.
The function returns a list of matching nodes.

Here's a complete example:
```c
const char *query = "//*[@roleImport and @roleDeclaration]";

// run the xpath query and check return value
Nodes *nodes = UastFilter(ctx, node, query);
if (nodes) {
  // iterate over the results and print the nodes
  for (int i = 0; i < NodesSize(nodes); i++) {
    void *node = NodeAt(nodes, i);
    print_node(node);
  }
}

// do not forget to free the nodes afterwards.
NodesFree(nodes);
```

#### UAST Iterators

The API provides a UASTIterator type that can iterate over the UAST in
pre-order, post-order or level-order.

Example:

```c
UastIterator *iter = UastIteratorNew(ctx, node, PREORDER);

void *curNode = NULL;
while((curNode = UastIteratorNext(iter)) != NULL) {
  // ... do something with the node
}

UastIteratorFree(iter);
```

## Contribute

Please follow [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
