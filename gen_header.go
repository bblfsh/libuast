package main

import (
	"bytes"
	"flag"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"io/ioutil"
	"os"
	"strings"
)

var (
	outFile = flag.String("o", "libuast.h", "output file")
)

func main() {
	flag.Parse()
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func run() error {
	src, err := ioutil.ReadFile("./src/api.go")
	if err != nil {
		return err
	}
	fs := token.NewFileSet()
	tree, err := parser.ParseFile(fs, "api.go", src, parser.ParseComments)
	if err != nil {
		return err
	}
	buf := new(bytes.Buffer)
	buf.WriteString(`
#ifdef __cplusplus
extern "C" {
#endif
`)
	for _, dec := range tree.Decls {
		fnc, ok := dec.(*ast.FuncDecl)
		if !ok {
			continue
		}
		doc := fnc.Doc.Text()
		pref := "export " + fnc.Name.Name
		if !strings.Contains(doc, pref) {
			continue
		}
		buf.WriteString("\n")
		for _, c := range fnc.Doc.List {
			if strings.HasPrefix(c.Text, "//"+pref) {
				continue
			}
			buf.WriteString(c.Text + "\n")
		}
		if err = writeCSignature(buf, fnc); err != nil {
			return err
		}
	}
	buf.WriteString(`
#ifdef __cplusplus
}
#endif
`)
	return writeHeader(buf.Bytes())
}

func writeCSignature(buf *bytes.Buffer, fnc *ast.FuncDecl) error {
	typ := fnc.Type
	buf.WriteString("extern ")
	if typ.Results != nil && len(typ.Results.List) != 0 {
		if err := writeCType(buf, typ.Results.List[0].Type); err != nil {
			return err
		}
	} else {
		buf.WriteString("void")
	}
	buf.WriteString(" ")
	buf.WriteString(fnc.Name.Name)
	buf.WriteString("(")
	for i, p := range fnc.Type.Params.List {
		if i != 0 {
			buf.WriteString(", ")
		}
		for j, name := range p.Names {
			if j != 0 {
				buf.WriteString(", ")
			}
			if err := writeCType(buf, p.Type); err != nil {
				return err
			}
			buf.WriteString(" ")
			buf.WriteString(name.Name)
		}
	}
	buf.WriteString(");\n")
	return nil
}

func writeCType(buf *bytes.Buffer, typ ast.Expr) error {
	switch typ := typ.(type) {
	case *ast.Ident:
		buf.WriteString(typ.Name)
	case *ast.StarExpr:
		if err := writeCType(buf, typ.X); err != nil {
			return err
		}
		buf.WriteString("*")
	case *ast.SelectorExpr:
		pkg, ok := typ.X.(*ast.Ident)
		if !ok {
			return fmt.Errorf("unknown package: %T", typ.X)
		}
		switch pkg.Name {
		default:
			return fmt.Errorf("unknown package: %v", pkg.Name)
		case "unsafe":
			if typ.Sel.Name != "Pointer" {
				return fmt.Errorf("unknown unsafe type: %v", typ.Sel.Name)
			}
			buf.WriteString("void*")
			return nil
		case "C":
		}
		if err := writeCType(buf, typ.Sel); err != nil {
			return err
		}
	default:
		return fmt.Errorf("unsupported type: %T", typ)
	}
	return nil
}

func writeHeader(data []byte) error {
	hdr, err := ioutil.ReadFile("./src/uast.h")
	if err != nil {
		return err
	}
	hdr = bytes.Replace(hdr, []byte("/*GO-HEADER*/"), data, 1)
	return ioutil.WriteFile(*outFile, hdr, 0644)
}
