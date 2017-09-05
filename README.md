# libuast

Libuast is a C library that implements different algorithms that consume the babelfish's UAST in order to query, inspect and process it.

Libuast is decoupled from the UAST data structures. This means that the UAST itself can be stored in any native object of the host language. In order to connect the C uast library with the data structure an implementation of the interface must be provided by the bindings.

## Features

- [x] xpath querying
- [ ] iterators

#### xpath querying

Currently only xpath querying is implemented, it allows to filter branches of the UAST tree that satisfy the xpath query string.

For example:

- Return all the numeric literals in python: `//NumLiteral`
- Return all the numeric literal in ANY language: `//*[@roleNumberLiteral]`

As you can see, it is possible to query the UAST using the `internal_type` and/or by universal roles, this way it can be easily reused across different languages.

## Installation

### Dependencies

- cmake
- libxml2
- libcunit1

#### Ubuntu instructions

```
sudo apt install cmake libxml2 libxml2-dev libcunit1 libcunit1-dev
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
});
```

`NodeIface` holds the functions that need the be executed when the library needs to access some of the properties of the node, such as `internal_type`, `token`, `children`, ...

Here you can see several examples of the `Uast`:
- [C++ node](https://github.com/bblfsh/libuast/blob/master/tests/mock-node.h)
- [Python node](https://github.com/bblfsh/client-python/blob/master/bblfsh/pyuast.c)
- [Go node](https://github.com/bblfsh/client-go/blob/master/bindings.h)

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
const char *query = "//*[@roleImportDeclaration]";

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

## Library internals

Internally UAST nodes are mapped to XML nodes in order to run xpath queries against them.

In _pseudo-xml_:

```xml
<{{internal_node}} role{{ROLE[n]}}> {{CHILDREN}} </{{internal_node}}>
```

As we can see, the `internal_type` (which is language-dependant) of the node is mapped as the tag-name while the roles are mapped as attributes of the element.

The roles are mapped as `role{{the role name in CamelCase}}`.

Examples:

  - `SIMPLE_IDENTIFIER`   -> `roleSimpleIdentifier`
  - `IMPORT_DECLARATION`  -> `roleImportDeclaration`


So, for example, to get all the number literals in Python, a filter to look for `NumLiteral` `internal_type` should work:

```python
xpath = "//NumLiteral"
```

But this is language dependant. To make it universal, roles should be used instead:

```python
xpath = "//*[@roleNumberLiteral]"
```

Look at [SDK documentation](https://godoc.org/github.com/bblfsh/sdk/uast#Role) for more information about roles.

## Contribute

Please follow [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
