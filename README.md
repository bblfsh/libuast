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

## Integrate libuast with your own node

As we said previously, libuast is decoupled for the underlining data structure that holds the node, instead, an interface must be implemented. Concretely `node_iface`, that is used to initialize the `node_api` struct.

Here's a real example from the `client-python`:

```c
node_api *api = new_node_api((node_iface){
      .internal_type = get_internal_type,
      .token = get_token,
      .children_size = get_children_size,
      .children = get_child,
      .roles_size = get_roles_size,
      .roles = get_role,
});
```

`node_iface` holds the functions that need the be executed when libuast needs to access some of the properties of the node, such as: "internal_type", "token", "children"...

Here you can see several examples of the `node_api`:
- [C++ node](https://github.com/bblfsh/libuast/blob/master/tests/mock-node.h#L56-L67)
- [Python node](https://github.com/manucorporat/client-python/blob/e55d61d45e75776aa9421e4b1769666f623dcbb0/bblfsh/pyuast.c#L106-L113)
- [Go node](https://github.com/manucorporat/client-go/blob/add-lib/bindings.h#L42-L49)

Once the `node_api` is created, it can be easily used to run xpath queries against the native nodes:

```c
// creating a node_api as we learn previously
node_api *api = create_api_from_node_iface();

// get a c pointer to the native node
void *node = (void*)pointerToNativeNode;

// consume the node_api API (xpath in this case)
int result = node_api_find(api, ctx, node, "//NumLiteral")
```

### Running a xpath query

At this point, you might have already created your very first binding of libuast. Let's start playing with real stuff!

#### xpath querying

XPATH allows to filter the whole UAST using the xpath syntax ( https://msdn.microsoft.com/en-us/library/ms256086(v=vs.110).aspx ). It can be really useful to extract features from the code and thanks to the annoation system implemented by babelfish, it can be done in an universal fashion.


In libuast, xpath querying is performed by the `node_api_find()` function. This function takes a pointer to the `node_api`, a `find_ctx` (which will be explained later), a pointer to the root node and of course, the xpath query as a C NULL-terminated string.

`find_ctx` is created with `new_find_ctx()` (simple eh). It is used to dynamically store the results of the xpath filtering, ie the list of nodes that satisfy the xpath condition.

Here's a complete example:
```c
// allocate a context to store the results of node_find()
find_ctx *ctx = new_find_ctx();

const char *query = "//*[@roleImportDeclaration]";

// run the xpath query and check for error codes
// no results does not mean an error occured
if (node_api_find(api, ctx, node, query) == 0) {
  // read total number of results
  int nu_results = find_ctx_get_len(ctx);

  // iterate over the results and print the nodes
  for (int i=0; i < nu_results; i++) {
    void *node = find_ctx_get(i);
    print_node(node);
  }
}

// do not forget to free the find_ctx if it will not longer be used.
// if you will, it is ok to reuse the same find_ctx across several
// xpath queries
free_find_ctx(ctx);
```

## XPATH manual

Internally UAST nodes must be "mapped" to XML nodes in order to run xpath queries against them.

In "pseudo-xml":

```xml
<{{internal_node}} role{{ROLE[n]}}> {{CHILDREN}} </{{internal_node}}>
```

As we can see, the `internal_type` (which is language-dependant) of the node is mapped as the tag-name while the roles are mapped as attributes of the element.

The roles are mapped as `"role" + {{the role name in CamelCase}}.

Examples:

  - `SIMPLE_IDENTIFIER`   -> `roleSimpleIdentifier`
  - `IMPORT_DECLARATION`  -> `roleImportDeclaration`


So let's say, I want to get all the number literals in python. I could just use the `internal_type` ("NumLiteral" in this case):

```python
xpath = "//NumLiteral"
```

But hey! this is supposed to be universal. Let's use roles instead (which are language-independent):

```python
xpath = "//*[@roleNumberLiteral]"
```

That weird syntax is just standard xpath 1.0, you can learn more here: https://www.w3.org/TR/xpath/

To know more about how roles are mapped by libuast check [roles.c](https://github.com/bblfsh/libuast/blob/master/src/roles.c)

## Contribute

Please follow [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
