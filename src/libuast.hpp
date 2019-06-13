#ifndef UAST_HPP_
#define UAST_HPP_
// C++ helpers to make it easier to implement NodeIface and work with Uast context.

#include "libuast.h"
#include <map>
#include <iostream>
#include <cstring>

// Workaround for linking libs cross-compiled with gcc vs VS2015 libs
// See: https://stackoverflow.com/questions/30412951/unresolved-external-symbol-imp-fprintf-and-imp-iob-func-sdl2
#ifdef _MSC_VER
    #if _MSC_VER >= 1900
        FILE _iob[] = {*stdin, *stdout, *stderr};

        extern "C" FILE * __cdecl __iob_func(void)
        {
            return &(_iob[0]);
        }
    #endif
#endif

namespace uast {
    struct Buffer {
        Buffer(void*  p, size_t sz) : ptr(p), size(sz) {}
        void*  ptr;
        size_t size;
    };

    // MemStats returns current memory usage for libuast.
    UastMemStats MemStats() {
        UastMemStats st;
        UastReadMemStats(&st);
        return st;
    }

    // Role of UAST node.
    class Role {
    private:
        int id;
    public:
        Role(int v) : id(v) {}
        Role(std::string name){
            id = RoleIdForName((char*)name.data());
        }
        int ID() { return id; }
        std::string Name() {
            return RoleNameForId(id);
        }
    };

    // Iterator is a common interface implemented by all UAST iterators.
    template<class T> class Iterator {
    public:
        virtual ~Iterator() {};

        virtual bool next() = 0;
        virtual T node() = 0;
    };

    // Context is a common interface implemented by all UAST contexts.
    template<class T> class Context {
    public:
        virtual ~Context() {};

        virtual Uast* rawPointer() = 0;
        virtual T ToNode(NodeHandle h) = 0;
        virtual NodeHandle ToHandle(T node) = 0;

        virtual void CheckError() = 0;
        virtual void SetError(std::string err) = 0;
        virtual T RootNode() = 0;

        virtual Buffer Encode(T node, UastFormat format) = 0;

        virtual Iterator<T>* Filter(T root, std::string query) = 0;
        virtual Iterator<T>* Iterate(T root, TreeOrder order) = 0;
    };

    // NodeCreator is an interface that creates new UAST nodes.
    template<class T> class NodeCreator {
    public:
        virtual ~NodeCreator() {};

        virtual T NewObject(size_t size) = 0;
        virtual T NewArray(size_t size) = 0;
        virtual T NewString(std::string str) = 0;
        virtual T NewInt(int64_t val) = 0;
        virtual T NewUint(uint64_t val) = 0;
        virtual T NewFloat(double val) = 0;
        virtual T NewBool(bool val) = 0;
    };

    // NodeRawInterface is the interface of the lowest abstraction level that is needed to work with UAST nodes.
    class NodeRawInterface : public NodeCreator<NodeHandle> {
    public:
        virtual NodeKind Kind(NodeHandle node) = 0;

        virtual std::string* AsString(NodeHandle node) = 0;
        virtual int64_t      AsInt(NodeHandle node) = 0;
        virtual uint64_t     AsUint(NodeHandle node) = 0;
        virtual double       AsFloat(NodeHandle node) = 0;
        virtual bool         AsBool(NodeHandle node) = 0;

        virtual size_t Size(NodeHandle node) = 0;

        virtual std::string* KeyAt(NodeHandle node, size_t i) = 0;
        virtual NodeHandle ValueAt(NodeHandle node, size_t i) = 0;

        virtual void SetValue(NodeHandle node, size_t i, NodeHandle val) = 0;
        virtual void SetKeyValue(NodeHandle node, std::string key, NodeHandle val) = 0;
    };

    // Node is a high-level interface for UAST nodes.
    // Template parameter should be set to a native UAST node pointer type.
    template<class T> class Node {
    public:
        virtual ~Node() {};

        virtual NodeKind Kind() = 0;

        virtual std::string* AsString() = 0;
        virtual int64_t      AsInt() = 0;
        virtual uint64_t     AsUint() = 0;
        virtual double       AsFloat() = 0;
        virtual bool         AsBool() = 0;

        virtual size_t Size() = 0;

        virtual std::string* KeyAt(size_t i) = 0;
        virtual T ValueAt(size_t i) = 0;

        virtual void SetValue(size_t i, T val) = 0;
        virtual void SetKeyValue(std::string key, T val) = 0;
    };

    // RawIterator is an UAST node iterator of the lowest abstraction level.
    class RawIterator : public Iterator<NodeHandle> {
    private:
        UastIterator* iter;
        NodeHandle cur;
        bool done;
    public:
        RawIterator(UastIterator* it) {
            iter = it;
            cur = 0;
            done = false;
        }
        ~RawIterator(){
            done = true;
            cur = 0;
            UastIteratorFree(iter);
            iter = nullptr;
        }
        bool next() {
            if (done) return false;
            cur = UastIteratorNext(iter);
            done = cur == 0;
            return !done;
        }
        NodeHandle node() {
            return cur;
        }
    };

    // RawContext is an UAST context at the lowest abstraction level.
    // It binds to a specific node implementation represented by NodeRawInterface.
    class RawContext : public Context<NodeHandle> {
    private:
        Uast* ctx;
        UastHandle handle;
        NodeRawInterface* impl;

        static UastHandle& lastHandle() {
            static UastHandle v = 0; return v;
        }

        static NodeIface*& cppIface() {
            static NodeIface* n = nullptr;
            if (n) return n;

            n = new(NodeIface);
            n->Kind = [] (const Uast* ctx, NodeHandle node) -> NodeKind {
                auto context = getContext(ctx);
                return context->impl->Kind(node);
            };
            n->AsString = [](const Uast* ctx, NodeHandle node) -> char* {
                auto context = getContext(ctx);
                std::string* str = context->impl->AsString(node);

                char * cstr = new char [str->length()+1];
                std::strcpy (cstr, str->c_str());
                delete str;

                return cstr;
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

            n->KeyAt = [](const Uast* ctx, NodeHandle node, size_t sz) -> char* {
                auto context = getContext(ctx);
                std::string* str = context->impl->KeyAt(node, sz);

                char * cstr = new char [str->length()+1];
                std::strcpy (cstr, str->c_str());
                delete str;

                return cstr;
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

        static std::map<UastHandle,RawContext*>& contexts() {
            static std::map<UastHandle,RawContext*> v; return v;
        }

        static std::map<UastHandle,RawContext*>& nativeContexts() {
            static std::map<UastHandle,RawContext*> v; return v;
        }

        static RawContext* getContext(const Uast* ctx) {
            if (ctx->iface == cppIface()) {
                return contexts()[ctx->ctx];
            }
            return nativeContexts()[ctx->ctx];
        }
    public:
        RawContext(NodeRawInterface* iface, Uast* c = nullptr) {
            impl = iface;
            if (c != nullptr) {
                // allocated natively, check the handle and use it (in a separate map)
                if (c->ctx  == 0) throw std::runtime_error("zero handle on a native context");
                nativeContexts()[c->ctx] = this;
                ctx = c;
            } else {
                // allocate a new handle and the context
                handle = ++lastHandle();
                contexts()[handle] = this;
                ctx = UastNew(cppIface(), handle);
                // TODO: check if pointer is valid
            }
            CheckError();
        }
        ~RawContext() {
            UastHandle nativeHandle = ctx->ctx;
            UastFree(ctx);
            ctx = nullptr;
            if (handle == 0) {
                nativeContexts().erase(nativeHandle);
            } else {
                contexts().erase(handle);
            }
            handle = 0;
            impl = nullptr;
        }

        Uast* rawPointer() { return ctx; }

        NodeHandle RootNode() {
            return ctx->root;
        }

        void CheckError() {
            char* err = UastLastError(ctx);
            if (err) throw std::runtime_error(err);
        }

        void SetError(std::string err) {
            UastSetError(ctx, (char *)(err.data()));
        }

        NodeHandle ToNode(NodeHandle node) { return node; }
        NodeHandle ToHandle(NodeHandle node) { return node; }

        Buffer Encode(NodeHandle node, UastFormat format) {
            if (node == 0) node = RootNode();
            size_t sz = 0;
            void* ptr = UastEncode(ctx, node, &sz, format);
            CheckError();
            return Buffer(ptr, sz);
        }

        Iterator<NodeHandle>* Filter(NodeHandle root, std::string query) {
            auto it = UastFilter(ctx, root, (char*)query.data());
            CheckError();
            return new RawIterator(it);
        }
        Iterator<NodeHandle>* Iterate(NodeHandle root, TreeOrder order) {
            auto it = UastIteratorNew(ctx, root, order);
            CheckError();
            return new RawIterator(it);
        }
    };

    // PtrIterator is an iterator that casts NodeHandle directly to pointer type T.
    template<class T> class PtrIterator : public Iterator<T> {
    private:
         Iterator<NodeHandle>* iter;
         bool owner;
    public:
        PtrIterator(Iterator<NodeHandle>* it, bool own = false) {
            iter = it;
            owner = own;
        }
        ~PtrIterator(){
            if(owner) delete(iter);
            iter = nullptr;
        }
        bool next() {
            return iter->next();
        }
        T node() {
            return (T)(iter->node());
        }
    };

    template<class T> class PtrInterface;

    // PtrContext is a Context implementation that casts NodeHandle directly to pointer type T.
    template<class T> class PtrContext : public Context<T> {
    private:
        RawContext* ctx;
    public:
        PtrContext(PtrInterface<T>* iface) {
            ctx = new RawContext(iface);
        }
        ~PtrContext(){
            delete(ctx);
            ctx = nullptr;
        }
        Uast* rawPointer() { return ctx->rawPointer(); }
        T RootNode() {
            auto raw = ctx->RootNode();
            return ToNode(raw);
        }
        T ToNode(NodeHandle node) {
            return (T)node;
        }
        NodeHandle ToHandle(T node) {
            return (NodeHandle)node;
        }
        Buffer Encode(T node, UastFormat format) {
            if (!node) node = RootNode();
            return ctx->Encode((NodeHandle)node, format);
        }
        Iterator<T>* Filter(T root, std::string query) {
            auto raw = ctx->Filter(ToHandle(root), query);
            auto it = new PtrIterator<T>(raw, true);
            return it;
        }
        Iterator<T>* Iterate(T root, TreeOrder order) {
            auto raw = ctx->Iterate(ToHandle(root), order);
            auto it = new PtrIterator<T>(raw, true);
            return it;
        }
        void CheckError(){
            ctx->CheckError();
        }
        void SetError(std::string err){
            ctx->SetError(err);
        }
    };

    // PtrInterface is an implementation of NodeRawInterface that casts NodeHandles directly to native node pointer T.
    template<class T> class PtrInterface : public NodeRawInterface {
    private:
        NodeCreator<T>* impl;
    public:
        PtrInterface(NodeCreator<T>* creator){
            impl = creator;
        }
        ~PtrInterface(){
        }
        Context<T>* NewContext() {
            auto ctx = new PtrContext<T>(this);
            return ctx;
        }

        NodeKind Kind(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->Kind();
        }

        std::string* AsString(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->AsString();
        }
        int64_t AsInt(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->AsInt();
        }
        uint64_t AsUint(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->AsUint();
        }
        double AsFloat(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->AsFloat();
        }
        bool AsBool(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->AsBool();
        }

        size_t Size(NodeHandle node) {
            Node<T>* n = (T)node;
            return n->Size();
        }

        std::string* KeyAt(NodeHandle node, size_t i) {
            Node<T>* n = (T)node;
            return n->KeyAt(i);
        }
        NodeHandle ValueAt(NodeHandle node, size_t i) {
            Node<T>* n = (T)node;
            T val = n->ValueAt(i);
            return (NodeHandle)val;
        }

        NodeHandle NewObject(size_t size) {
            T node = impl->NewObject(size);
            return (NodeHandle)node;
        }
        NodeHandle NewArray(size_t size) {
            T node = impl->NewArray(size);
            return (NodeHandle)node;
        }
        NodeHandle NewString(std::string str) {
            T node = impl->NewString(str);
            return (NodeHandle)node;
        }
        NodeHandle NewInt(int64_t val) {
            T node = impl->NewInt(val);
            return (NodeHandle)node;
        }
        NodeHandle NewUint(uint64_t val) {
            T node = impl->NewUint(val);
            return (NodeHandle)node;
        }
        NodeHandle NewFloat(double val) {
            T node = impl->NewFloat(val);
            return (NodeHandle)node;
        }
        NodeHandle NewBool(bool val) {
            T node = impl->NewBool(val);
            return (NodeHandle)node;
        }

        void SetValue(NodeHandle node, size_t i, NodeHandle v) {
            Node<T>* n = (T)node;
            T val = (T)v;
            n->SetValue(i, val);
        }
        void SetKeyValue(NodeHandle node, std::string key, NodeHandle v) {
            Node<T>* n = (T)node;
            T val = (T)v;
            n->SetKeyValue(key, val);
        }
    };

    // NativeInterface represents an implementation of UAST by libuast itself.
    class NativeInterface : public NodeRawInterface {
    private:
        Uast *ctx;
        NodeIface *iface;
    public:
        NativeInterface(Uast *c){
            ctx = c;
            iface = c->iface;
        }
        NodeKind Kind(NodeHandle node) {
            return iface->Kind(ctx, node);
        }

        std::string* AsString(NodeHandle node) {
            char* s = iface->AsString(ctx, node);
            std::string* str = new std::string(s);
            delete s;

            return str;
        }
        int64_t AsInt(NodeHandle node) {
            return iface->AsInt(ctx, node);
        }
        uint64_t AsUint(NodeHandle node) {
            return iface->AsUint(ctx, node);
        }
        double AsFloat(NodeHandle node) {
            return iface->AsFloat(ctx, node);
        }
        bool AsBool(NodeHandle node) {
            return iface->AsBool(ctx, node);
        }

        size_t Size(NodeHandle node) {
            return iface->Size(ctx, node);
        }

        std::string* KeyAt(NodeHandle node, size_t i) {
            char* s = iface->KeyAt(ctx, node, i);
            std::string* str = new std::string(s);
            delete s;

            return str;
        }
        NodeHandle ValueAt(NodeHandle node, size_t i) {
            return iface->ValueAt(ctx, node, i);
        }

        NodeHandle NewObject(size_t size) {
            return iface->NewObject(ctx, size);
        }
        NodeHandle NewArray(size_t size) {
            return iface->NewArray(ctx, size);
        }
        NodeHandle NewString(std::string str) {
            return iface->NewString(ctx, str.data());
        }
        NodeHandle NewInt(int64_t val) {
            return iface->NewInt(ctx, val);
        }
        NodeHandle NewUint(uint64_t val) {
            return iface->NewUint(ctx, val);
        }
        NodeHandle NewFloat(double val) {
            return iface->NewFloat(ctx, val);
        }
        NodeHandle NewBool(bool val) {
            return iface->NewBool(ctx, val);
        }

        void SetValue(NodeHandle node, size_t i, NodeHandle v) {
            iface->SetValue(ctx, node, i, v);
        }
        void SetKeyValue(NodeHandle node, std::string k, NodeHandle v) {
            iface->SetKeyValue(ctx, node, k.data(), v);
        }
    };

    Context<NodeHandle>* Decode(Buffer buf, UastFormat format = UAST_BINARY) {
        Uast* ctx = UastDecode(buf.ptr, buf.size, format);

        char* err = UastLastError(ctx);
        if (err) throw std::runtime_error(err);

        auto impl = new NativeInterface(ctx);
        return new RawContext(impl, ctx);
    }

    template<class T1, class T2> T2 Load(Context<T1>* src, T1 node, Context<T2>* dst) {
        Uast* sctx = src->rawPointer();
        Uast* dctx = dst->rawPointer();

        NodeHandle n = src->ToHandle(node);

        n = UastLoad(sctx, n, dctx);

        return dst->ToNode(n);
    }

    // LineCol is a line-column pair.
    struct LineCol {
        int line; // 1-based
        int col;  // 1-based
        LineCol() : line(-1), col(-1) {}
        LineCol(int l, int c) : line(l), col(c) {}
    };

    // SourceIndex represents a positional index for a source file.
    class SourceIndex {
    private:
        UastSourceIndex *idx;
    public:
        SourceIndex(std::string src) {
            idx = UastSourceIndexNew((void*)(src.data()), src.size());
        }
        SourceIndex(void* data, size_t size) {
            idx = UastSourceIndexNew(data, size);
        }
        ~SourceIndex() {
            UastSourceIndexFree(idx);
            idx = nullptr;
        }
        // CheckError throws a last encountered error, if any, and clear the error state of an index.
        void CheckError() {
            char* err = UastSourceIndex_LastError(idx);
            if (err) {
                UastSourceIndex_ClearError(idx);
                throw std::runtime_error(err);
            }
        }
        // FromLineCol converts one-based line-column pair (in bytes) in the indexed
        // source file to a zero-based byte offset. It return -1 in case of failure.
        int FromLineCol(int line, int col) {
            return UastSourceIndex_FromLineCol(idx, line, col);
        }
        // FromUnicode converts zero-based Unicode character offset in the indexed
        // source file to a zero-based byte offset. It return -1 in case of failure.
        int FromUnicode(int off) {
            return UastSourceIndex_FromUnicode(idx, off);
        }
        // ToUnicode converts zero-based byte offset in the indexed source file to
        // a zero-based Unicode character offset. It return -1 in case of failure.
        int ToUnicode(int off) {
            return UastSourceIndex_ToUnicode(idx, off);
        }
        // FromUTF16 converts zero-based UTF-16 code point offset in the indexed
        // source file to a zero-based byte offset. It return -1 in case of failure.
        int FromUTF16(int off) {
            return UastSourceIndex_FromUTF16(idx, off);
        }
        // ToUTF16 converts zero-based byte offset in the indexed source file to
        // a zero-based UTF-16 code point offset. It return -1 in case of failure.
        int ToUTF16(int off) {
            return UastSourceIndex_ToUTF16(idx, off);
        }
        // ToLineCol converts zero-based byte offset in the indexed source
        // file to a one-based line and one-based column pair (in bytes).
        // It return a LineCol with both elements set to -1 in case of failure.
        LineCol ToLineCol(int off) {
            UastLineCol pos = UastSourceIndex_ToLineCol(idx, off);
            return LineCol(pos.line, pos.col);
        }
        // ToUnicodeLineCol converts zero-based byte offset in the indexed source
        // file to a one-based line and one-based column pair (in Unicode characters).
        // It return a LineCol with both elements set to -1 in case of failure.
        LineCol ToUnicodeLineCol(int off) {
            UastLineCol pos = UastSourceIndex_ToUnicodeLineCol(idx, off);
            return LineCol(pos.line, pos.col);
        }
        // ToUTF16LineCol converts zero-based byte offset in the indexed source
        // file to a one-based line and one-based column pair (in UTF-16 code units).
        // It return a LineCol with both elements set to -1 in case of failure.
        LineCol ToUTF16LineCol(int off) {
            UastLineCol pos = UastSourceIndex_ToUTF16LineCol(idx, off);
            return LineCol(pos.line, pos.col);
        }
    };
} // namespace uast
#endif // UAST_HPP_
