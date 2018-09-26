#ifndef UAST_HPP_
#define UAST_HPP_
// C++ helpers to make it easier to implement NodeIface and work with Uast context.

#include "libuast.h"
#include <map>
#include <iostream>


class NodeInterface {
public:

    virtual NodeKind Kind(NodeHandle node) = 0;

    virtual const char* AsString(NodeHandle node) = 0;
    virtual int64_t     AsInt(NodeHandle node) = 0;
    virtual uint64_t    AsUint(NodeHandle node) = 0;
    virtual double      AsFloat(NodeHandle node) = 0;
    virtual bool        AsBool(NodeHandle node) = 0;

    virtual size_t Size(NodeHandle node) = 0;

    virtual const char* KeyAt(NodeHandle node, size_t sz) = 0;
    virtual NodeHandle ValueAt(NodeHandle node, size_t sz) = 0;

    virtual NodeHandle NewObject(size_t size) = 0;
    virtual NodeHandle NewArray(size_t size) = 0;
    virtual NodeHandle NewString(const char* str) = 0;
    virtual NodeHandle NewInt(int64_t val) = 0;
    virtual NodeHandle NewUint(uint64_t val) = 0;
    virtual NodeHandle NewFloat(double val) = 0;
    virtual NodeHandle NewBool(bool val) = 0;

    virtual void SetValue(NodeHandle node, size_t i, NodeHandle val) = 0;
    virtual void SetKeyValue(NodeHandle node, const char* key, NodeHandle val) = 0;
};

class Context {
private:
    Uast* ctx;
    UastHandle handle;
    NodeInterface* impl;

    static UastHandle& lastHandle() {
        static UastHandle v = 0; return v;
    }

    static NodeIface*& cppIface() {
        static NodeIface* n = NULL;
        if (n) return n;

        n = new(NodeIface);
        n->Kind = [] (const Uast* ctx, NodeHandle node) -> NodeKind {
            auto context = getContext(ctx);
            return context->impl->Kind(node);
        };
        n->AsString = [](const Uast* ctx, NodeHandle node) -> const char* {
            auto context = getContext(ctx);
            return context->impl->AsString(node);
        };
        n->AsInt = [](const Uast* ctx, NodeHandle node) -> int64_t {
            auto context = getContext(ctx);
            return context->impl->AsInt(node);
        };
        n->AsUint = [](const Uast* ctx, NodeHandle node) -> uint64_t {
            auto context = getContext(ctx);
            return context->impl->AsUint(node);
        };
        n->AsFloat = [](const Uast* ctx, NodeHandle node) -> double {
            auto context = getContext(ctx);
            return context->impl->AsFloat(node);
        };
        n->AsBool = [](const Uast* ctx, NodeHandle node) -> bool {
            auto context = getContext(ctx);
            return context->impl->AsBool(node);
        };

        n->Size = [](const Uast* ctx, NodeHandle node) -> size_t {
            auto context = getContext(ctx);
            return context->impl->Size(node);
        };

        n->KeyAt = [](const Uast* ctx, NodeHandle node, size_t sz) -> const char* {
            auto context = getContext(ctx);
            return context->impl->KeyAt(node, sz);
        };
        n->ValueAt = [](const Uast* ctx, NodeHandle node, size_t sz) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->ValueAt(node, sz);
        };

        n->NewObject = [](const Uast* ctx, size_t size) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewObject(size);
        };
        n->NewArray = [](const Uast* ctx, size_t size) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewArray(size);
        };
        n->NewString = [](const Uast* ctx, const char* str) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewString(str);
        };
        n->NewInt = [](const Uast* ctx, int64_t val) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewInt(val);
        };
        n->NewUint = [](const Uast* ctx, uint64_t val) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewUint(val);
        };
        n->NewFloat = [](const Uast* ctx, double val) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewFloat(val);
        };
        n->NewBool = [](const Uast* ctx, bool val) -> NodeHandle {
            auto context = getContext(ctx);
            return context->impl->NewBool(val);
        };

        n->SetValue = [](const Uast* ctx, NodeHandle node, size_t i, NodeHandle val) {
            auto context = getContext(ctx);
            context->impl->SetValue(node, i, val);
        };
        n->SetKeyValue = [](const Uast* ctx, NodeHandle node, const char* key, NodeHandle val) {
            auto context = getContext(ctx);
            context->impl->SetKeyValue(node, key, val);
        };
        return n;
    }

    static std::map<UastHandle,Context*>& contexts() {
        static std::map<UastHandle,Context*> v; return v;
    }

    static Context* getContext(const Uast* ctx) {
        return contexts()[ctx->ctx];
    }
public:
    Context(NodeInterface* iface) {
        handle = ++lastHandle();
        contexts()[handle] = this;
        impl = iface;
        ctx = UastNew(cppIface(), handle);
    }
    ~Context() {
        UastFree(ctx);
        ctx = NULL;
        contexts().erase(handle);
        handle = 0;
        impl = NULL;
    }

    char* Error() {
        // TODO: replace it with throw
        return LastError(ctx);
    }
    UastIterator* Filter(NodeHandle root, const char * query) {
        return UastFilter(ctx, root, (char*)query);
    }
};

#endif // UAST_HPP_