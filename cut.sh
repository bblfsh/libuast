#!/usr/bin/env bash

LIBUAST="$1"
SED="sed -i"
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED='sed -i ""'
fi

# Cut cgo prolog since we don't use cgo types in API definition.
$SED '/#line 1 "cgo-builtin-prolog"/,/#line 3 "api.go"/d' $LIBUAST
$SED '/#line 1 "cgo-generated-wrapper"/,/End of boilerplate cgo prologue/d' $LIBUAST
# Cut Go interface implementations that only exists to be used by the libuast itself.
$SED '/uastKind/,/uastSetKeyValue/d' $LIBUAST

# Rename function parameters

# UastNew
$SED 's/NodeIface\* p0, UastHandle p1/NodeIface\* impl, UastHandle instHandle/g' $LIBUAST
# UastDecode
$SED 's/void\* p0, size_t p1, UastFormat p2/void\* ptr, size_t sz, UastFormat format/g' $LIBUAST
# UastEncode
$SED 's/Uast\* p0, NodeHandle p1, size_t\* p2, UastFormat p3/Uast\* ctx, NodeHandle node, size_t\* outSize, UastFormat format/g' $LIBUAST
# UastFilter
$SED 's/Uast\* p0, NodeHandle p1, char\* p2/Uast\* ctx, NodeHandle node, char\* query/g' $LIBUAST
# SetError
$SED 's/Uast\* p0, char\* p1/Uast\* ctx, char\* err/g' $LIBUAST

# Common replacements
$SED 's/Uast\* p0/Uast\* ctx/g' $LIBUAST
$SED 's/NodeHandle p1/NodeHandle node/g' $LIBUAST
$SED 's/TreeOrder p2/TreeOrder order/g' $LIBUAST
$SED 's/UastIterator\* p0/UastIterator\* iter/g' $LIBUAST

