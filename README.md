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

## Contribute

Please follow [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
