# libuast [![Build Status](https://travis-ci.org/bblfsh/libuast.svg?branch=master)](https://travis-ci.org/bblfsh/libuast) [![Build status](https://ci.appveyor.com/api/projects/status/hq2o0qcw81q9eys7?svg=true)](https://ci.appveyor.com/project/mcuadros/libuast) [![codecov](https://codecov.io/gh/bblfsh/libuast/branch/master/graph/badge.svg)](https://codecov.io/gh/bblfsh/libuast)

Libuast is a Go library exposed as a C (shared) library and implements different algorithms that consume the Babelfish's UAST in order to query, inspect and process it.

Libuast is decoupled from the UAST data structures. This means that the UAST itself can be stored in any native object of the host language.
In order to connect the C uast library with the data structure an implementation of the interface must be provided by the bindings.

## Features

* XPath queries of UAST
* UAST iterators
* Encoding and decoding of UAST

Supports Linux, Darwin and Windows.

## Installation

Check [releases](https://github.com/bblfsh/libuast/releases) for precompiled binaries.

### Dependencies

**Dependencies:**
- Go >= 1.11
- gcc (for cgo)
- libcunit1 (optional, for tests)

#### Ubuntu instructions

```
sudo snap install --classic go
sudo apt install build-essential libcunit1 libcunit1-dev
```

For cross-compilation to Windows:

```
sudo apt install gcc-mingw-w64-x86-64
```

### Windows instructions

[WINDOWS.md](WINDOWS.md)

### Build/Install C API

```
make
```

### Run the tests

```
make test
```

## Query language

Any of the [node](https://godoc.org/github.com/bblfsh/sdk/uast/nodes#Object) fields can be used for querying, which are mapped in the following way:

* `@type` is converted to the element name
* `@token`, if available, is converted to an attribute with `token` as keyword and the actual token as value. It is also mapped to the `text()` of the node.
* Every item of the `@role` field is converted to a `role` attribute with a role name in CamelCase as a value.
* Every field that stores a value is converted to an attribute.
* `@pos` fields are mapped to a set of attributes with a `<pos-name>-<pos-field>` name, for example:
  * `start-offset` - an offset of the `start` position (same for the `end` position)
  * `start-line` - a line of the `start` position
  * `start-col` - a column of the `start` position
* Every field that stores a node or an array of nodes is mapped to a separate element
  with a field name as an element name and a set of nodes mapped to children of that node.

which are mapped in to XML in the following way:

```xml
<uast:Identifier
    token='A'
    role='Identifier' role='Name'
    Name='A'
	start-offset='7' start-line='3' start-col='1'
	end-offset='8' end-line='3' end-col='2'
>
A
</uast:Identifier>
```

or for nested nodes:

```xml
<uast:Alias
	start-offset='7' start-line='3' start-col='1'
	end-offset='13' end-line='4' end-col='1'
>
    <Name>
        <uast:Identifier role='Identifier' role='Name' Name='A'></uast:Identifier>
    </Name>
    <Node>
        <uast:String role='String' role='Literal' Value='B'></uast:String>
    </Node>
</uast:Alias>
```

<!-- TODO: update link and query docs -->
Check [the official documentation](https://doc.bblf.sh/user/uast-querying.html)
for example queries.

## Implementing the node interface

`libuast` is built to be easily bindable, and to allow a native data structures (like arrays and maps) for a
[`Node`](https://godoc.org/github.com/bblfsh/sdk/uast/nodes#Node) in every language.

That's why the library provides an interface to this `Node` data structure that must be implemented.
Concretely `NodeIface`, that is used to initialize the `Uast` struct:

```c

NodeIface iface;
iface.Kind = Kind;
iface.Size = Size;
// ...

Uast *ctx = UastNew(&iface, 0);
```

`NodeIface` holds the functions that need the be executed when the library needs to access object fields, array items or individual values.

Here you can see several examples of the `Uast`:
<!-- TODO: update links once clients are updated -->
- [C++ node](https://github.com/bblfsh/libuast/blob/master/tests/mock_node.h)
- [Python node](https://github.com/bblfsh/client-python/blob/master/bblfsh/pyuast.c)
- [Go node](https://github.com/bblfsh/client-go/blob/master/tools/bindings.h)

Once the `Uast` context is created, it can be easily used to run xpath queries against the native nodes:

```c
// creating a Uast as explained above
Uast *ctx = CreateContextFromIface();

// get a handle or c pointer for the native node
NodeHandle node = (NodeHandle)pointerToNativeNode;

// consume the Uast API (xpath in this case)
UastIterator *iter = UastFilter(ctx, node, "//NumLiteral");
```

### Running an xpath query

At this point, you might have already created your very first binding of libuast. Let's start playing with real stuff!

#### XPath querying

XPath allows to filter the whole UAST using the [xpath syntax](https://www.w3.org/TR/xpath/).
It can be really useful to extract features from the code and thanks to
the annotation system implemented by Babelfish, it can be done in an universal fashion.


In libuast, xpath querying is performed by the `UastFilter` function.
This function takes a pointer to the `Uast` context, a handle to the root node
(a pointer in the simplest case), and the xpath query string.
The function returns an iterator of matching nodes.

Here's a complete example:
```c
const char *query = "//*[@role='Import' and @role='Declaration']";

// run the xpath query and check return value
UastIterator *iter = UastFilter(ctx, node, query);

NodeHandle node = 0;
while((node = UastIteratorNext(iter)) != 0) {
    print_node(node);
}

// do not forget to free the iterator afterwards.
UastIteratorFree(iter);
```

#### UAST Iterators

The API provides a `UastIterator` type that can iterate over the UAST in
pre-order, post-order, level-order and position-order (the last one is by the 
node `start-offset/start-line/start-col`).

Example:

```c
UastIterator *iter = UastIteratorNew(ctx, node, PRE_ORDER);

NodeHandle node = 0;
while((node = UastIteratorNext(iter)) != 0) {
  // ... do something with the node
}

UastIteratorFree(iter);
```

## Contribute

Please follow [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html) 
for naming and whitespace.
