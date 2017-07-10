
Module‹
Expr
internalRolebody∂
StringLiteral
internalRolevalueê
PreviousNoops

end_lineno16
internalRolenoops_previousC
NoopLine
internalRolelines"#!/usr/bin/env python
*:ä/
NoopLine
internalRolelines"#
*:äG
NoopLine
internalRolelines"# Copyright 2009 Facebook
*:ä/
NoopLine
internalRolelines"#
*:äw
NoopLine
internalRolelines"J# Licensed under the Apache License, Version 2.0 (the "License"); you may
*:äw
NoopLine
internalRolelines"J# not use this file except in compliance with the License. You may obtain
*:äH
NoopLine
internalRolelines"# a copy of the License at
*:ä/
NoopLine
internalRolelines"#
*:ä^
NoopLine
internalRolelines"1#     http://www.apache.org/licenses/LICENSE-2.0
*	:ä/
NoopLine
internalRolelines"#
*
:äs
NoopLine
internalRolelines"F# Unless required by applicable law or agreed to in writing, software
*:äy
NoopLine
internalRolelines"L# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
*:äx
NoopLine
internalRolelines"K# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
*:äw
NoopLine
internalRolelines"J# License for the specific language governing permissions and limitations
*:äB
NoopLine
internalRolelines"# under the License.
*:ä.
NoopLine
internalRolelines"
*:ä*:å"ÛA non-blocking, single-threaded HTTP server.

Typical applications have little direct interaction with the `HTTPServer`
class except to start a server at the beginning of the process
(and even that is often done indirectly via `tornado.web.Application.listen`).

This module also defines the `HTTPRequest` class which is exposed via
`tornado.web.RequestHandler.request`.
*:y*:¯

ImportFrom
internalRolebody

level0{
PreviousNoops

end_lineno26
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:åµ
ImportFrom.names
promotedPropertyListtrue-
alias
asname<nil>"absolute_import:1&
alias
asname<nil>"division:1,
alias
asname<nil>"with_statement:1"
__future__*:/¯
Import
internalRolebody{
PreviousNoops

end_lineno28
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:åR
Import.names
promotedPropertyListtrue$
alias
asname<nil>"Cookie:1*:/|
Import
internalRolebodyS
Import.names
promotedPropertyListtrue%
alias
asname<nil>"logging:1*:/{
Import
internalRolebodyR
Import.names
promotedPropertyListtrue$
alias
asname<nil>"socket:1*:/y
Import
internalRolebodyP
Import.names
promotedPropertyListtrue"
alias
asname<nil>"time:1* :/Û

ImportFrom
internalRolebody

level0{
PreviousNoops

end_lineno33
internalRolenoops_previous.
NoopLine
internalRolelines"
*!:ä*!:å¨
ImportFrom.names
promotedPropertyListtrue"
alias
asname<nil>"utf8:1(
alias
asname<nil>"
native_str:1,
alias
asname<nil>"parse_qs_bytes:1"tornado.escape*":/ö

ImportFrom
internalRolebody

level0X
ImportFrom.names
promotedPropertyListtrue&
alias
asname<nil>"httputil:1"tornado*#:/ö

ImportFrom
internalRolebody

level0X
ImportFrom.names
promotedPropertyListtrue&
alias
asname<nil>"iostream:1"tornado*$:/£

ImportFrom
internalRolebody

level0Y
ImportFrom.names
promotedPropertyListtrue'
alias
asname<nil>"	TCPServer:1"tornado.netutil*%:/ü

ImportFrom
internalRolebody

level0]
ImportFrom.names
promotedPropertyListtrue+
alias
asname<nil>"stack_context:1"tornado*&:/¬

ImportFrom
internalRolebody

level0{
ImportFrom.names
promotedPropertyListtrue
alias
asname<nil>"b:1(
alias
asname<nil>"
bytes_type:1"tornado.util*':/ü
	TryExcept
internalRolebodyŒ
Import
internalRolebody{
PreviousNoops
internalRolenoops_previous

end_lineno40.
NoopLine
internalRolelines"
*(:ä*(:åW
SameLineNoops
col_end29
internalRolenoops_sameline"# Python 2.6+**:äO
Import.names
promotedPropertyListtrue!
alias
asname<nil>"ssl:1**:/°
ExceptHandler
internalRolehandlers§
Assign
internalRolebody=
Name
ctxStore
internalRoletargets"ssl*,:É;
Name
internalRolevalue
ctxLoad"None*,:Ñ*,:Ç?
Name
ctxLoad
internalRoletype"ImportError*+:"<nil>*+:c*):cƒ:
ClassDef
internalRolebodyâ
ClassDef.bases
promotedPropertyListtrue’
Name
ctxLoad´
PreviousNoops

end_lineno46
internalRolenoops_previous.
NoopLine
internalRolelines"
*-:ä.
NoopLine
internalRolelines"
*.:ä*-:å"	TCPServer*/::<ˇ7
ClassDef.body
promotedPropertyListtrueö
Exprâ
StringLiteral
internalRolevalue"ÿA non-blocking, single-threaded HTTP server.

    A server is defined by a request callback that takes an HTTPRequest
    instance as an argument and writes a valid HTTP response with
    `HTTPRequest.write`. `HTTPRequest.finish` finishes the request (but does
    not necessarily close the connection in the case of HTTP/1.1 keep-alive
    requests). A simple example server that echoes back the URI you
    requested::

        import httpserver
        import ioloop

        def handle_request(request):
           message = "You requested %s\n" % request.uri
           request.write("HTTP/1.1 200 OK\r\nContent-Length: %d\r\n\r\n%s" % (
                         len(message), message))
           request.finish()

        http_server = httpserver.HTTPServer(handle_request)
        http_server.listen(8888)
        ioloop.IOLoop.instance().start()

    `HTTPServer` is a very basic connection handler. Beyond parsing the
    HTTP request body and headers, the only HTTP semantics implemented
    in `HTTPServer` is HTTP/1.1 keep-alive connections. We do not, however,
    implement chunked encoding, so the request callback must provide a
    ``Content-Length`` header or implement chunked encoding for HTTP/1.1
    requests for the server to run correctly for HTTP/1.1 clients. If
    the request handler is unable to do this, you can provide the
    ``no_keep_alive`` argument to the `HTTPServer` constructor, which will
    ensure the connection is closed on every request no matter what HTTP
    version the client is using.

    If ``xheaders`` is ``True``, we support the ``X-Real-Ip`` and ``X-Scheme``
    headers, which override the remote IP and HTTP scheme for all requests.
    These headers are useful when running Tornado behind a reverse proxy or
    load balancer.

    `HTTPServer` can serve SSL traffic with Python 2.6+ and OpenSSL.
    To make this server serve SSL traffic, send the ssl_options dictionary
    argument with the arguments required for the `ssl.wrap_socket` method,
    including "certfile" and "keyfile"::

       HTTPServer(applicaton, ssl_options={
           "certfile": os.path.join(data_dir, "mydomain.crt"),
           "keyfile": os.path.join(data_dir, "mydomain.key"),
       })

    `HTTPServer` initialization follows one of three patterns (the
    initialization methods are defined on `tornado.netutil.TCPServer`):

    1. `~tornado.netutil.TCPServer.listen`: simple single-process::

            server = HTTPServer(app)
            server.listen(8888)
            IOLoop.instance().start()

       In many cases, `tornado.web.Application.listen` can be used to avoid
       the need to explicitly create the `HTTPServer`.

    2. `~tornado.netutil.TCPServer.bind`/`~tornado.netutil.TCPServer.start`:
       simple multi-process::

            server = HTTPServer(app)
            server.bind(8888)
            server.start(0)  # Forks multiple sub-processes
            IOLoop.instance().start()

       When using this interface, an `IOLoop` must *not* be passed
       to the `HTTPServer` constructor.  `start` will always start
       the server on the default singleton `IOLoop`.

    3. `~tornado.netutil.TCPServer.add_sockets`: advanced multi-process::

            sockets = tornado.netutil.bind_sockets(8888)
            tornado.process.fork_processes(0)
            server = HTTPServer(app)
            server.add_sockets(sockets)
            IOLoop.instance().start()

       The `add_sockets` interface is more complicated, but it can be
       used with `tornado.process.fork_processes` to give you more
       flexibility in when the fork happens.  `add_sockets` can
       also be used in single-process servers if you want to create
       your listening sockets in some way other than
       `tornado.netutil.bind_sockets`.

    *á:y*á:ä
FunctionDef∞
	arguments
internalRoleargs
kwargkwargs
vararg<nil><
Name
ctxParam
internalRoleargs"self*à:67H
Name
ctxParam
internalRoleargs"request_callback*à:67E
Name
internalRoleargs
ctxParam"no_keep_alive*à*:67?
Name
ctxParam
internalRoleargs"io_loop*à?:67@
Name
internalRoleargs
ctxParam"xheaders*â:67C
Name
ctxParam
internalRoleargs"ssl_options*â":67À
arguments.defaults
promotedPropertyListtrue$
Name
ctxLoad"False*à8:#
Name
ctxLoad"None*àG:$
Name
ctxLoad"False*â:#
Name
ctxLoad"None*â.::8*à:6±

FunctionDef.body
promotedPropertyListtrueÏ
Assignå
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*ä	:"request_callback*ä	:ÉH
Name
ctxLoad
internalRolevalue"request_callback*ä!:Ñ*ä	:ÇÊ
Assignâ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ã	:"no_keep_alive*ã	:ÉE
Name
ctxLoad
internalRolevalue"no_keep_alive*ã:Ñ*ã	:Ç‹
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*å	:"xheaders*å	:É@
Name
ctxLoad
internalRolevalue"xheaders*å:Ñ*å	:Çƒ
Expr±
Call
internalRolevalue
starargs<nil>:
Name
ctxLoad
internalRoleargs"self*ç:jÖ
	Attribute
internalRolefunc
ctxLoad?
Name
ctxLoad
internalRolevalue"	TCPServer*ç	:"__init__*ç	:iit
keyword
internalRolekeywords>
Name
ctxLoad
internalRolevalue"io_loop*ç*:m"io_loop*ç:k|
keyword
internalRolekeywordsB
Name
ctxLoad
internalRolevalue"ssl_options*ç?:m"ssl_options*ç:k=
Name
ctxLoad
internalRolekwargs"kwargs*é:*ç	:g*ç	::3"__init__*à:24¢	
FunctionDefä
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
internalRoleargs
ctxParam~
PreviousNoops

end_lineno143
internalRolenoops_previous/
NoopLine
internalRolelines"
*è:ä*è:å"self*ê:67>
Name
ctxParam
internalRoleargs"stream*ê:67?
Name
internalRoleargs
ctxParam"address*ê%:67*ê:6Í
FunctionDef.body
promotedPropertyListtrue¥
Expr°
Call
internalRolevalue
kwargs<nil>
starargs<nil><
Name
ctxLoad
internalRoleargs"stream*ë:j=
Name
ctxLoad
internalRoleargs"address*ë :já
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*ë):"request_callback*ë):jÑ
	Attribute
internalRoleargs
ctxLoad:
Name
internalRolevalue
ctxLoad"self*í:"no_keep_alive*í:j
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*í,:"xheaders*í,:jE
Name
ctxLoad
internalRolefunc"HTTPConnection*ë	:ii*ë	:g*ë	::3"handle_stream*ê:24:;"
HTTPServer*/::â
ClassDef
internalRolebodyé
ClassDef.bases
promotedPropertyListtrue⁄
Name
ctxLoadØ
PreviousNoops

end_lineno148
internalRolenoops_previous/
NoopLine
internalRolelines"
*ì:ä/
NoopLine
internalRolelines"
*î:ä*ì:å"	Exception*ï::<¥
ClassDef.body
promotedPropertyListtruep
Expr^
StringLiteral
internalRolevalue",Exception class for malformed HTTP requests.*ñ:y*ñ:
Pass*ó:n:;"_BadRequestException*ï::¬´
ClassDef
internalRolebodyã
ClassDef.bases
promotedPropertyListtrue◊
Name
ctxLoadØ
PreviousNoops
internalRolenoops_previous

end_lineno153/
NoopLine
internalRolelines"
*ò:ä/
NoopLine
internalRolelines"
*ô:ä*ò:å"object*ö::<ı®
ClassDef.body
promotedPropertyListtrue˜
ExprÊ
StringLiteral
internalRolevalue"µHandles a connection to an HTTP client, executing HTTP requests.

    We parse HTTP headers and bodies, and execute the request callback
    until the HTTP conection is closed.
    *ü:y*ü:˙
FunctionDef‡
	arguments
vararg<nil>
internalRoleargs
kwarg<nil><
Name
internalRoleargs
ctxParam"self*†:67>
Name
internalRoleargs
ctxParam"stream*†:67?
Name
ctxParam
internalRoleargs"address*† :67H
Name
ctxParam
internalRoleargs"request_callback*†):67E
Name
internalRoleargs
ctxParam"no_keep_alive*†;:67@
Name
internalRoleargs
ctxParam"xheaders*°:67Å
arguments.defaults
promotedPropertyListtrue$
Name
ctxLoad"False*†I:$
Name
ctxLoad"False*°::8*†:6Ò
FunctionDef.body
promotedPropertyListtrueÿ
AssignÇ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¢	:"stream*¢	:É>
Name
ctxLoad
internalRolevalue"stream*¢:Ñ*¢	:Ç⁄
AssignÉ
	Attribute
ctxStore
internalRoletargets:
Name
internalRolevalue
ctxLoad"self*£	:"address*£	:É?
Name
ctxLoad
internalRolevalue"address*£:Ñ*£	:ÇÏ
Assignå
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*§	:"request_callback*§	:ÉH
Name
ctxLoad
internalRolevalue"request_callback*§!:Ñ*§	:ÇÊ
Assignâ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*•	:"no_keep_alive*•	:ÉE
Name
internalRolevalue
ctxLoad"no_keep_alive*•:Ñ*•	:Ç‹
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¶	:"xheaders*¶	:É@
Name
ctxLoad
internalRolevalue"xheaders*¶:Ñ*¶	:Çÿ
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ß	:"_request*ß	:É<
Name
ctxLoad
internalRolevalue"None*ß:Ñ*ß	:Ç‚
Assignç
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*®	:"_request_finished*®	:É=
Name
ctxLoad
internalRolevalue"False*®":Ñ*®	:Ç∑
Assignƒ
	Attribute
internalRoletargets
ctxStoreÒ
Name
ctxLoad
internalRolevalue¥
PreviousNoops

end_lineno170
internalRolenoops_previousu
NoopLine
internalRolelines"G        # Save stack context here, outside of any request.  This keeps
*©:än
NoopLine
internalRolelines"@        # contexts from one request from leaking into the next.
*™:ä*©:å"self*´	:"_header_callback*´	:É⁄
Call
internalRolevalue
kwargs<nil>
starargs<nil>Ç
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*´4:"_on_headers*´4:jÖ
	Attribute
ctxLoad
internalRolefuncC
Name
internalRolevalue
ctxLoad"stack_context*´!:"wrap*´!:ii*´!:gÑ*´	:Ç
Expr›
Call
starargs<nil>
internalRolevalue
kwargs<nil>Ω
Call
starargs<nil>
internalRoleargs
kwargs<nil>6
StringLiteral
internalRoleargs"

*¨":yj8
Name
ctxLoad
internalRolefunc"b*¨ :ii*¨ :jgá
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*¨/:"_header_callback*¨/:j≈
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*¨	:"stream*¨	:"
read_until*¨	:ii*¨	:g*¨	:ﬂ
Assignã
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*≠	:"_write_callback*≠	:É<
Name
ctxLoad
internalRolevalue"None*≠ :Ñ*≠	:Ç:3"__init__*†:24œ
FunctionDefÊ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno174/
NoopLine
internalRolelines"
*Æ:ä*Æ:å"self*Ø:67=
Name
ctxParam
internalRoleargs"chunk*Ø:67@
Name
ctxParam
internalRoleargs"callback*Ø:67Z
arguments.defaults
promotedPropertyListtrue#
Name
ctxLoad"None*Ø%::8*Ø:6√
FunctionDef.body
promotedPropertyListtruek
ExprY
StringLiteral
internalRolevalue"'Writes a chunk of output to the stream.*∞	:y*∞	:“
Assert>
StringLiteral
internalRolemsg"Request closed*±:y~
	Attribute
ctxLoad
internalRoletest:
Name
ctxLoad
internalRolevalue"self*±:"_request*±:*±	:fÀ

If”
If.body
promotedPropertyListtrueπ
Assignã
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*≥:"_write_callback*≥:Éï
Call
starargs<nil>
internalRolevalue
kwargs<nil>>
Name
internalRoleargs
ctxLoad"callback*≥7:jÖ
	Attribute
ctxLoad
internalRolefuncC
Name
ctxLoad
internalRolevalue"stack_context*≥$:"wrap*≥$:ii*≥$:gÑ*≥:ÇÍ
Expr◊
Call
internalRolevalue
kwargs<nil>
starargs<nil>;
Name
internalRoleargs
ctxLoad"chunk*¥:jâ
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*¥&:"_on_write_complete*¥&:j¿
	Attribute
ctxLoad
internalRolefunc}
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*¥:"stream*¥:"write*¥:ii*¥:g*¥::H‰
UnaryOp
internalRoletest$
Not
internalRoleop"!*≤:'ë
Call
kwargs<nil>
starargs<nil>
internalRoleoperand¡
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*≤:"stream*≤:"closed*≤:ii*≤:g*≤:G*≤	:F:3"write*Ø:24à
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno181
internalRolenoops_previous/
NoopLine
internalRolelines"
*µ:ä*µ:å"self*∂:67*∂:6ÿ	
FunctionDef.body
promotedPropertyListtrueY
ExprG
StringLiteral
internalRolevalue"Finishes the request.*∑	:y*∑	:“
Assert>
StringLiteral
internalRolemsg"Request closed*∏:y~
	Attribute
internalRoletest
ctxLoad:
Name
internalRolevalue
ctxLoad"self*∏:"_request*∏:*∏	:f·
Assignç
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*π	:"_request_finished*π	:É<
Name
ctxLoad
internalRolevalue"True*π":Ñ*π	:Çé
Ifï
If.body
promotedPropertyListtrueË
Expr’
Call
internalRolevalue
kwargs<nil>
starargs<nil>á
	Attribute
internalRolefunc
ctxLoad:
Name
ctxLoad
internalRolevalue"self*ª:"_finish_request*ª:ii*ª:g*ª::HÂ
UnaryOp
internalRoletest$
Not
internalRoleop"!*∫:'í
Call
kwargs<nil>
starargs<nil>
internalRoleoperand¬
	Attribute
ctxLoad
internalRolefunc}
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*∫:"stream*∫:"writing*∫:ii*∫:g*∫:G*∫	:F:3"finish*∂:24†
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
internalRoleargs
ctxParam~
PreviousNoops

end_lineno188
internalRolenoops_previous/
NoopLine
internalRolelines"
*º:ä*º:å"self*Ω:67*Ω:6‰
FunctionDef.body
promotedPropertyListtrueÅ
Ifî
If.body
promotedPropertyListtrue„
AssignC
Name
ctxStore
internalRoletargets"callback*ø:Éà
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*ø:"_write_callback*ø:Ñ*ø:Çﬂ
Assignã
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¿:"_write_callback*¿:É<
Name
internalRolevalue
ctxLoad"None*¿$:Ñ*¿:Çü
Exprå
Call
internalRolevalue
kwargs<nil>
starargs<nil>?
Name
ctxLoad
internalRolefunc"callback*¡:ii*¡:g*¡::HŸ
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"None*æ(::Ü
	Attribute
internalRoleleft
ctxLoad:
Name
ctxLoad
internalRolevalue"self*æ:"_write_callback*æ:G
Compare.ops
promotedPropertyListtrue
IsNot"not is*æ::*æ:G*æ	:F™
Ifï
If.body
promotedPropertyListtrueË
Expr’
Call
starargs<nil>
internalRolevalue
kwargs<nil>á
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self* :"_finish_request* :ii* :g* ::HÅ
BoolOp
internalRoletest!
And
internalRoleop*…:% 
	Attribute
internalRolevalues
ctxLoad˙
Name
ctxLoad
internalRolevalueΩ
PreviousNoops

end_lineno200
internalRolenoops_previousr
NoopLine
internalRolelines"D        # _on_write_complete is enqueued on the IOLoop whenever the
*¬:äu
NoopLine
internalRolelines"G        # IOStream's write buffer becomes empty, but it's possible for
*√:än
NoopLine
internalRolelines"@        # another callback that runs on the IOLoop before it to
*ƒ:äs
NoopLine
internalRolelines"E        # simultaneously write more data and finish the request.  If
*≈:äf
NoopLine
internalRolelines"8        # there is still data in the IOStream, a future
*∆:äk
NoopLine
internalRolelines"=        # _on_write_complete will be responsible for calling
*«:äI
NoopLine
internalRolelines"        # _finish_request.
*»:ä*¬:å"self*…:"_request_finished*…:Ê
UnaryOp
internalRolevalues$
Not
internalRoleop"!*…:'í
Call
starargs<nil>
internalRoleoperand
kwargs<nil>¬
	Attribute
internalRolefunc
ctxLoad}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*…+:"stream*…+:"writing*…+:ii*…+:g*…':*…:G*…	:F:3"_on_write_complete*Ω:24»-
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno203
internalRolenoops_previous/
NoopLine
internalRolelines"
*À:ä*À:å"self*Ã:67*Ã:6è+
FunctionDef.body
promotedPropertyListtrueﬁ
If≈
If.body
promotedPropertyListtrueò
AssignE
Name
ctxStore
internalRoletargets"
disconnect*Œ:É<
Name
ctxLoad
internalRolevalue"True*Œ:Ñ*Œ:Ç:H˛
	If.orelse
promotedPropertyListtrue˜
AssignL
Name
internalRoletargets
ctxStore"connection_header*–:Éì
Call
internalRolevalue
kwargs<nil>
starargs<nil><
StringLiteral
internalRoleargs"
Connection*–;:yjÖ
	Attribute
ctxLoad
internalRolefunc√
	Attribute
ctxLoad
internalRolevalue
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*–!:"_request*–!:"headers*–!:"get*–!:ii*–!:gÑ*–:Çò
IfÎ
If.body
promotedPropertyListtrueæ
AssignL
Name
ctxStore
internalRoletargets"connection_header*“:É⁄
Call
kwargs<nil>
starargs<nil>
internalRolevalueä
	Attribute
internalRolefunc
ctxLoadG
Name
ctxLoad
internalRolevalue"connection_header*“%:"lower*“%:ii*“%:gÑ*“:Ç:Hô
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"None*—)::G
Name
internalRoleleft
ctxLoad"connection_header*—:G
Compare.ops
promotedPropertyListtrue
IsNot"not is*—::*—:G*—:F∫
Ifì
If.body
promotedPropertyListtrueÊ
AssignE
Name
ctxStore
internalRoletargets"
disconnect*‘:Éâ
Compare
internalRolevalueU
Compare.comparators
promotedPropertyListtrue 
StringLiteral"close*‘3:yF
Name
ctxLoad
internalRoleleft"connection_header*‘:=
Compare.ops
promotedPropertyListtrue
Eq"==*‘:*‘:Ñ*‘:Ç:HÙ
	If.orelse
promotedPropertyListtrue≈
Ifõ
If.body
promotedPropertyListtrueÓ
AssignE
Name
internalRoletargets
ctxStore"
disconnect*◊:Éë
Compare
internalRolevalueZ
Compare.comparators
promotedPropertyListtrue%
StringLiteral"
keep-alive*◊3:yF
Name
ctxLoad
internalRoleleft"connection_header*◊:@
Compare.ops
promotedPropertyListtrue
NotEq"!=*◊:*◊:Ñ*◊:Ç:H«
	If.orelse
promotedPropertyListtrueò
AssignE
Name
ctxStore
internalRoletargets"
disconnect*Ÿ:É<
Name
internalRolevalue
ctxLoad"True*Ÿ:Ñ*Ÿ:Ç:IÃ
BoolOp
internalRoletest 
Or
internalRoleop*’:&ç
Compare
internalRolevalues‚
Compare.comparators
promotedPropertyListtrue¨
	Attribute
ctxLoad
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*’':"_request*’':"headers*’':?
StringLiteral
internalRoleleft"Content-Length*’:y=
Compare.ops
promotedPropertyListtrue
In"in*’:*’Ô
Compare
internalRolevalues¡
Compare.comparators
promotedPropertyListtrueã
Tuple
ctxLoad5
StringLiteral
internalRoleelts"HEAD*÷1:y4
StringLiteral
internalRoleelts"GET*÷9:y*÷1:z¡
	Attribute
ctxLoad
internalRoleleft
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*÷:"_request*÷:"method*÷:=
Compare.ops
promotedPropertyListtrue
In"in*÷:*÷*’:G*’:F:Iú
Call
internalRoletest
kwargs<nil>
starargs<nil>Œ
	Attribute
ctxLoad
internalRolefunc
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*”:"_request*”:"supports_http_1_1*”:ii*”:gG*”:F:IÑ
	Attribute
ctxLoad
internalRoletest:
Name
ctxLoad
internalRolevalue"self*Õ:"no_keep_alive*Õ:G*Õ	:Fÿ
AssignÑ
	Attribute
internalRoletargets
ctxStore:
Name
internalRolevalue
ctxLoad"self*⁄	:"_request*⁄	:É<
Name
ctxLoad
internalRolevalue"None*⁄:Ñ*⁄	:Ç‚
Assignç
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*€	:"_request_finished*€	:É=
Name
ctxLoad
internalRolevalue"False*€":Ñ*€	:Ç≈
IfÚ
If.body
promotedPropertyListtrue°
Expré
Call
kwargs<nil>
starargs<nil>
internalRolevalue¿
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*›:"stream*›:"close*›:ii*›:g*›:"
Return
value<nil>*ﬁ:`:H@
Name
ctxLoad
internalRoletest"
disconnect*‹:G*‹	:F
Expr›
Call
kwargs<nil>
starargs<nil>
internalRolevalueΩ
Call
kwargs<nil>
starargs<nil>
internalRoleargs6
StringLiteral
internalRoleargs"

*ﬂ":yj8
Name
internalRolefunc
ctxLoad"b*ﬂ :ii*ﬂ :jgá
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*ﬂ/:"_header_callback*ﬂ/:j≈
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ﬂ	:"stream*ﬂ	:"
read_until*ﬂ	:ii*ﬂ	:g*ﬂ	::3"_finish_request*Ã:24µc
FunctionDef«
	arguments
kwarg<nil>
vararg<nil>
internalRoleargsº
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno224
internalRolenoops_previous/
NoopLine
internalRolelines"
*‡:ä*‡:å"self*·:67<
Name
ctxParam
internalRoleargs"data*·:67*·:6¬`
FunctionDef.body
promotedPropertyListtrueå`
	TryExceptÖ
Assign
internalRolebody?
Name
ctxStore
internalRoletargets"data*„:Éò
Call
kwargs<nil>
starargs<nil>
internalRolevalueÖ
Call
starargs<nil>
internalRoleargs
kwargs<nil>8
StringLiteral
internalRoleargs"latin1*„+:yj~
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"data*„:"decode*„:ii*„:jgA
Name
ctxLoad
internalRolefunc"
native_str*„:ii*„:gÑ*„:ÇÌ
Assign
internalRolebody>
Name
ctxStore
internalRoletargets"eol*‰:ÉÅ
Call
internalRolevalue
kwargs<nil>
starargs<nil>4
StringLiteral
internalRoleargs"
*‰:yj|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"data*‰:"find*‰:ii*‰:gÑ*‰:Ç„
Assign
internalRolebodyE
Name
ctxStore
internalRoletargets"
start_line*Â:É
	Subscript
ctxLoad
internalRolevaluex
Slice
internalRoleslice
lower<nil>
step<nil>9
Name
ctxLoad
internalRoleupper"eol*Â ::
Name
ctxLoad
internalRolevalue"data*Â:*Â:Ñ*Â:Çá
	TryExcept
internalRolebody©
Assign
internalRolebodyÚ
Tuple
ctxStore
internalRoletargets<
Name
internalRoleelts
ctxStore"method*Á:9
Name
ctxStore
internalRoleelts"uri*Á:=
Name
ctxStore
internalRoleelts"version*Á:*Á:zÉà
Call
internalRolevalue
kwargs<nil>
starargs<nil>3
StringLiteral
internalRoleargs" *Á9:yjÉ
	Attribute
internalRolefunc
ctxLoad@
Name
ctxLoad
internalRolevalue"
start_line*Á(:"split*Á(:ii*Á(:gÑ*Á:Ç≠
ExceptHandler
internalRolehandlersØ
Raise
inst<nil>
internalRolebody
tback<nil>Ê
Call
internalRoletype
kwargs<nil>
starargs<nil>M
StringLiteral
internalRoleargs"Malformed HTTP request line*È,:yjK
Name
internalRolefunc
ctxLoad"_BadRequestException*È:ii*È:g*È:e?
Name
internalRoletype
ctxLoad"
ValueError*Ë:"<nil>*Ë:c*Ê:c·
If
internalRolebody÷
If.body
promotedPropertyListtrue©
Raise
tback<nil>
inst<nil>ˆ
Call
internalRoletype
kwargs<nil>
starargs<nil>]
StringLiteral
internalRoleargs"+Malformed HTTP version in HTTP Request-Line*Î,:yjK
Name
ctxLoad
internalRolefunc"_BadRequestException*Î:ii*Î:g*Î:e:H·
UnaryOp
internalRoletest$
Not
internalRoleop"!*Í:'é
Call
internalRoleoperand
kwargs<nil>
starargs<nil>7
StringLiteral
internalRoleargs"HTTP/*Í':yjÖ
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"version*Í:"
startswith*Í:ii*Í:g*Í:G*Í:F˚
Assign
internalRolebodyB
Name
ctxStore
internalRoletargets"headers*Ï:Éã
Call
starargs<nil>
internalRolevalue
kwargs<nil>Ó
	Subscript
internalRoleargs
ctxLoadx
Slice
step<nil>
upper<nil>
internalRoleslice9
Name
ctxLoad
internalRolelower"eol*Ï7::
Name
internalRolevalue
ctxLoad"data*Ï2:*Ï2:j 
	Attribute
ctxLoad
internalRolefuncÜ
	Attribute
ctxLoad
internalRolevalue>
Name
ctxLoad
internalRolevalue"httputil*Ï:"HTTPHeaders*Ï:"parse*Ï:ii*Ï:gÑ*Ï:Ç—
If
internalRolebody—
If.body
promotedPropertyListtrue§
AssignÔ
Name
ctxStore
internalRoletargets®
PreviousNoops

end_lineno242
internalRolenoops_previousw
NoopLine
internalRolelines"I                # Jython 2.5.2 doesn't have the socket.family attribute,
*Ò:ä`
NoopLine
internalRolelines"2                # so just assume IP in that case.
*Ú:ä*Ò:å"	remote_ip*Û:Éú
	Subscript
ctxLoad
internalRolevalue`
Index
internalRoleslice@

NumLiteral
NumTypeint
internalRolevalue"0*Û*:v~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Û:"address*Û:*Û:Ñ*Û:Ç:Hà
	If.orelse
promotedPropertyListtrueŸ
AssignÜ
Name
ctxStore
internalRoletargetsø
PreviousNoops

end_lineno245
internalRolenoops_previousp
NoopLine
internalRolelines"B                # Unix (or other) socket; fake the remote address
*ı:ä*ı:å"	remote_ip*ˆ:É;
StringLiteral
internalRolevalue"0.0.0.0*ˆ:yÑ*ˆ:Ç:IÀ	
Compare
internalRoletest€
Compare.comparators
promotedPropertyListtrue¢
Tuple
ctxLoad
	Attribute
ctxLoad
internalRoleelts<
Name
ctxLoad
internalRolevalue"socket*:"AF_INET*:Ä
	Attribute
internalRoleelts
ctxLoad<
Name
ctxLoad
internalRolevalue"socket*!:"AF_INET6*!:*:z:˛
Call
internalRoleleft
kwargs<nil>
starargs<nil>¿
	Attribute
ctxLoad
internalRoleargs}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ô:"stream*Ô:"socket*Ô:j8
StringLiteral
internalRoleargs"family*Ô,:yjÄ
	Attribute
ctxLoad
internalRoleargs<
Name
ctxLoad
internalRolevalue"socket*Ô6:"AF_INET*Ô6:j∞
Name
ctxLoad
internalRolefuncÔ
PreviousNoops

end_lineno238
internalRolenoops_previous/
NoopLine
internalRolelines"
*Ì:äo
NoopLine
internalRolelines"A            # HTTPRequest wants an IP, not a full socket address
*Ó:ä*Ì:å"getattr*Ô:ii*Ô:g@
Compare.ops
promotedPropertyListtrue
In"in*Ô::*Ô:G*Ô:FÉ	
Assign
internalRolebodyÖ
	Attribute
internalRoletargets
ctxStore∫
Name
internalRolevalue
ctxLoad~
PreviousNoops
internalRolenoops_previous

end_lineno247/
NoopLine
internalRolelines"
*˜:ä*˜:å"self*¯:"_request*¯:Éœ
Call
internalRolevalue
kwargs<nil>
starargs<nil>B
Name
ctxLoad
internalRolefunc"HTTPRequest*¯:iit
keyword
internalRolekeywords;
Name
ctxLoad
internalRolevalue"self*˘:m"
connection*¯:kr
keyword
internalRolekeywords=
Name
ctxLoad
internalRolevalue"method*˘):m"method*¯:kl
keyword
internalRolekeywords:
Name
ctxLoad
internalRolevalue"uri*˘5:m"uri*¯:kt
keyword
internalRolekeywords>
Name
ctxLoad
internalRolevalue"version*˘B:m"version*¯:kt
keyword
internalRolekeywords>
Name
ctxLoad
internalRolevalue"headers*˙:m"headers*¯:kx
keyword
internalRolekeywords@
Name
ctxLoad
internalRolevalue"	remote_ip*˙,:m"	remote_ip*¯:k*¯:gÑ*¯:Çá
Assign
internalRolebody…
Name
ctxStore
internalRoletargets~
PreviousNoops

end_lineno251
internalRolenoops_previous/
NoopLine
internalRolelines"
*˚:ä*˚:å"content_length*¸:Éè
Call
internalRolevalue
kwargs<nil>
starargs<nil>@
StringLiteral
internalRoleargs"Content-Length*¸*:yj~
	Attribute
internalRolefunc
ctxLoad=
Name
ctxLoad
internalRolevalue"headers*¸:"get*¸:ii*¸:gÑ*¸:Ç
If
internalRolebodyÉ
If.body
promotedPropertyListtrue∞
AssignI
Name
ctxStore
internalRoletargets"content_length*˛:Éœ
Call
internalRolevalue
kwargs<nil>
starargs<nil>D
Name
ctxLoad
internalRoleargs"content_length*˛&:j:
Name
internalRolefunc
ctxLoad"int*˛":ii*˛":gÑ*˛:Çı
If¬
If.body
promotedPropertyListtrueï
Raise
inst<nil>
tback<nil>‚
Call
kwargs<nil>
starargs<nil>
internalRoletypeI
StringLiteral
internalRoleargs"Content-Length too long*Ä0:yjK
Name
ctxLoad
internalRolefunc"_BadRequestException*Ä:ii*Ä:g*Ä:e:Hü
Compare
internalRoletestÎ
Compare.comparators
promotedPropertyListtrue≤
	Attribute
ctxLoad}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ˇ%:"stream*ˇ%:"max_buffer_size*ˇ%::D
Name
ctxLoad
internalRoleleft"content_length*ˇ:?
Compare.ops
promotedPropertyListtrue
Gt">*ˇ::*ˇ:G*ˇ:Fé
If•
If.body
promotedPropertyListtrue¯
ExprÂ
Call
internalRolevalue
kwargs<nil>
starargs<nil>‘
Call
internalRoleargs
kwargs<nil>
starargs<nil>M
StringLiteral
internalRoleargs"HTTP/1.1 100 (Continue)

*Ç):yj8
Name
ctxLoad
internalRolefunc"b*Ç':ii*Ç':jg¿
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ç:"stream*Ç:"write*Ç:ii*Ç:g*Ç::H’
Compare
internalRoletest_
Compare.comparators
promotedPropertyListtrue'
StringLiteral"100-continue*Å-:y:Ö
Call
internalRoleleft
kwargs<nil>
starargs<nil>8
StringLiteral
internalRoleargs"Expect*Å :yj~
	Attribute
internalRolefunc
ctxLoad=
Name
ctxLoad
internalRolevalue"headers*Å:"get*Å:ii*Å:g@
Compare.ops
promotedPropertyListtrue
Eq"==*Å::*Å:G*Å:Fˆ
Expr„
Call
internalRolevalue
kwargs<nil>
starargs<nil>D
Name
ctxLoad
internalRoleargs"content_length*É(:já
	Attribute
internalRoleargs
ctxLoad:
Name
internalRolevalue
ctxLoad"self*É8:"_on_request_body*É8:j≈
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*É:"stream*É:"
read_bytes*É:ii*É:g*É:"
Return
value<nil>*Ñ:`:HD
Name
ctxLoad
internalRoletest"content_length*˝:G*˝:FÅ
Expr
internalRolebodyÿ
Call
internalRolevalue
kwargs<nil>
starargs<nil>
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*Ü#:"_request*Ü#:jâ
	Attribute
ctxLoad
internalRolefunc∫
Name
internalRolevalue
ctxLoad~
PreviousNoops
internalRolenoops_previous

end_lineno261/
NoopLine
internalRolelines"
*Ö:ä*Ö:å"self*Ü:"request_callback*Ü:ii*Ü:g*Ü:œ	
ExceptHandler
internalRolehandlers°
Expr
internalRolebody¯
Call
internalRolevalue
kwargs<nil>
starargs<nil>T
StringLiteral
internalRoleargs""Malformed HTTP request from %s: %s*à:yjö
	Subscript
ctxLoad
internalRoleargs`
Index
internalRoleslice@

NumLiteral
NumTypeint
internalRolevalue"0*â':v~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*â:"address*â:*â:j7
Name
ctxLoad
internalRoleargs"e*â+:j
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"logging*à:"info*à:ii*à:g*à:∑
Expr
internalRolebodyé
Call
starargs<nil>
internalRolevalue
kwargs<nil>¿
	Attribute
internalRolefunc
ctxLoad}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ä:"stream*ä:"close*ä:ii*ä:g*ä:8
Return
internalRolebody
value<nil>*ã:`7
Name
ctxStore
internalRolename"e*á&:I
Name
internalRoletype
ctxLoad"_BadRequestException*á:*á	:c*‚	:c:3"_on_headers*·:24»@
FunctionDef«
	arguments
kwarg<nil>
vararg<nil>
internalRoleargsº
Name
internalRoleargs
ctxParam~
PreviousNoops
internalRolenoops_previous

end_lineno268/
NoopLine
internalRolelines"
*å:ä*å:å"self*ç:67<
Name
ctxParam
internalRoleargs"data*ç :67*ç:6–=
FunctionDef.body
promotedPropertyListtrueô
Assign≈
	Attribute
internalRoletargets
ctxStore
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*é	:"_request*é	:"body*é	:É<
Name
ctxLoad
internalRolevalue"data*é:Ñ*é	:Ç¶
AssignG
Name
internalRoletargets
ctxStore"content_type*è	:É«
Call
starargs<nil>
internalRolevalue
kwargs<nil>>
StringLiteral
internalRoleargs"Content-Type*è2:yj0
StringLiteral
internalRoleargs*èB:yjÖ
	Attribute
ctxLoad
internalRolefunc√
	Attribute
ctxLoad
internalRolevalue
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*è:"_request*è:"headers*è:"get*è:ii*è:gÑ*è	:ÇË3
If§/
If.body
promotedPropertyListtrue˜.
If©
If.body
promotedPropertyListtrueƒ
AssignD
Name
ctxStore
internalRoletargets"	arguments*í:ÉË
Call
internalRolevalue
kwargs<nil>
starargs<nil>—
Call
internalRoleargs
kwargs<nil>
starargs<nil>¿
	Attribute
ctxLoad
internalRoleargs
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*í7:"_request*í7:"body*í7:jA
Name
ctxLoad
internalRolefunc"
native_str*í,:ii*í,:jgE
Name
ctxLoad
internalRolefunc"parse_qs_bytes*í:ii*í:gÑ*í:Çµ
Foró

For.body
promotedPropertyListtrue∏
AssignA
Name
ctxStore
internalRoletargets"values*î:Éﬂ
ListComp
internalRolevalue5
Name
ctxLoad
internalRoleelt"v*î:˘
ListComp.generators
promotedPropertyListtrue√
comprehension5
Name
ctxLoad
internalRoleifs"v*î4:<
Name
ctxLoad
internalRoleiter"values*î*:R:
Name
ctxStore
internalRoletarget"v*î%:Q:T*î:Ñ*î:ÇÆ
Ifﬂ
If.body
promotedPropertyListtrue≤
Exprü
Call
starargs<nil>
internalRolevalue
kwargs<nil><
Name
internalRoleargs
ctxLoad"values*ó:jì
	Attribute
ctxLoad
internalRolefuncŒ
Call
internalRolevalue
kwargs<nil>
starargs<nil>:
Name
ctxLoad
internalRoleargs"name*ñ<:j4
List
internalRoleargs
ctxLoad*ñB:sjé
	Attribute
ctxLoad
internalRolefunc≈
	Attribute
internalRolevalue
ctxLoad
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ñ:"_request*ñ:"	arguments*ñ:"
setdefault*ñ:ii*ñ:g"extend*ñ:ii*ñ:g*ñ::H<
Name
ctxLoad
internalRoletest"values*ï:G*ï:F:S‘
Call
internalRoleiter
kwargs<nil>
starargs<nil>Ü
	Attribute
ctxLoad
internalRolefunc?
Name
ctxLoad
internalRolevalue"	arguments*ì%:"	iteritems*ì%:ii*ì%:gQ≤
Tuple
ctxStore
internalRoletarget:
Name
ctxStore
internalRoleelts"name*ì:<
Name
ctxStore
internalRoleelts"values*ì:*ì:zR*ì:T:Hä
	If.orelse
promotedPropertyListtrue€
If®
If.body
promotedPropertyListtrue„
AssignA
Name
internalRoletargets
ctxStore"fields*ô:Éä
Call
internalRolevalue
kwargs<nil>
starargs<nil>3
StringLiteral
internalRoleargs";*ô-:yjÖ
	Attribute
ctxLoad
internalRolefuncB
Name
internalRolevalue
ctxLoad"content_type*ô:"split*ô:ii*ô:gÑ*ô:Çï
For†
For.body
promotedPropertyListtrueò
AssignÁ
Tuple
internalRoletargets
ctxStore7
Name
ctxStore
internalRoleelts"k*õ:9
Name
internalRoleelts
ctxStore"sep*õ:7
Name
ctxStore
internalRoleelts"v*õ:*õ:zÉò
Call
kwargs<nil>
starargs<nil>
internalRolevalue3
StringLiteral
internalRoleargs"=*õ9:yjì
	Attribute
ctxLoad
internalRolefuncÀ
Call
internalRolevalue
kwargs<nil>
starargs<nil>~
	Attribute
ctxLoad
internalRolefunc;
Name
internalRolevalue
ctxLoad"field*õ!:"strip*õ!:ii*õ!:g"	partition*õ!:ii*õ!:gÑ*õ:Ç◊

If¬
If.body
promotedPropertyListtrueÇ
ExprÔ
Call
kwargs<nil>
starargs<nil>
internalRolevalue¡
Call
internalRoleargs
kwargs<nil>
starargs<nil>7
Name
ctxLoad
internalRoleargs"v*û":j;
Name
ctxLoad
internalRolefunc"utf8*û:ii*û:jg:
Name
ctxLoad
internalRoleargs"data*û&:j≈
	Attribute
ctxLoad
internalRoleargs
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ü:"_request*ü:"	arguments*ü:j¡
	Attribute
internalRoleargs
ctxLoad
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*†:"_request*†:"files*†:jï
	Attribute
ctxLoad
internalRolefunc>
Name
ctxLoad
internalRolevalue"httputil*ù:"parse_multipart_form_data*ù:ii*ù:g*ù:
Break*°:[:HÅ
BoolOp
internalRoletest!
And
internalRoleop*ú:%˘
Compare
internalRolevaluesX
Compare.comparators
promotedPropertyListtrue#
StringLiteral"boundary*ú:y6
Name
ctxLoad
internalRoleleft"k*ú:=
Compare.ops
promotedPropertyListtrue
Eq"==*ú:*ú8
Name
ctxLoad
internalRolevalues"v*ú,:*ú:G*ú:F:S<
Name
ctxLoad
internalRoleiter"fields*ö:Q‚

For.orelse
promotedPropertyListtrue≤
Exprü
Call
starargs<nil>
internalRolevalue
kwargs<nil>M
StringLiteral
internalRoleargs"Invalid multipart/form-data*£%:yjÇ
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"logging*£:"warning*£:ii*£:g*£::I>
Name
internalRoletarget
ctxStore"field*ö:R*ö:T:Hü
Call
starargs<nil>
internalRoletest
kwargs<nil>E
StringLiteral
internalRoleargs"multipart/form-data*ò*:yjä
	Attribute
ctxLoad
internalRolefuncB
Name
internalRolevalue
ctxLoad"content_type*ò:"
startswith*ò:ii*ò:gG*ò:F:I≠
Call
internalRoletest
kwargs<nil>
starargs<nil>S
StringLiteral
internalRoleargs"!application/x-www-form-urlencoded*ë(:yjä
	Attribute
ctxLoad
internalRolefuncB
Name
ctxLoad
internalRolevalue"content_type*ë:"
startswith*ë:ii*ë:gG*ë:F:H∞
Compare
internalRoletest¸
Compare.comparators
promotedPropertyListtrue√
Tuple
ctxLoad5
StringLiteral
internalRoleelts"POST*ê%:y6
StringLiteral
internalRoleelts"PATCH*ê-:y4
StringLiteral
internalRoleelts"PUT*ê6:y*ê%:z:¬
	Attribute
ctxLoad
internalRoleleft
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ê:"_request*ê:"method*ê:@
Compare.ops
promotedPropertyListtrue
In"in*ê::*ê:G*ê	:FÍ
Expr◊
Call
internalRolevalue
kwargs<nil>
starargs<nil>
	Attribute
internalRoleargs
ctxLoad:
Name
ctxLoad
internalRolevalue"self*§:"_request*§:jà
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*§	:"request_callback*§	:ii*§	:g*§	::3"_on_request_body*ç:24:;"HTTPConnection*ö::◊˚
ClassDef
internalRolebodyã
ClassDef.bases
promotedPropertyListtrue◊
Name
ctxLoadØ
PreviousNoops

end_lineno294
internalRolenoops_previous/
NoopLine
internalRolelines"
*•:ä/
NoopLine
internalRolelines"
*¶:ä*•:å"object*ß::<ç˘
ClassDef.body
promotedPropertyListtrueŸ
Expr»
StringLiteral
internalRolevalue"óA single HTTP request.

    All attributes are type `str` unless otherwise noted.

    .. attribute:: method

       HTTP request method, e.g. "GET" or "POST"

    .. attribute:: uri

       The requested uri.

    .. attribute:: path

       The path portion of `uri`

    .. attribute:: query

       The query portion of `uri`

    .. attribute:: version

       HTTP version specified in request, e.g. "HTTP/1.1"

    .. attribute:: headers

       `HTTPHeader` dictionary-like object for request headers.  Acts like
       a case-insensitive dictionary with additional methods for repeated
       headers.

    .. attribute:: body

       Request body, if present, as a byte string.

    .. attribute:: remote_ip

       Client's IP address as a string.  If `HTTPServer.xheaders` is set,
       will pass along the real IP address provided by a load balancer
       in the ``X-Real-Ip`` header

    .. attribute:: protocol

       The protocol used, either "http" or "https".  If `HTTPServer.xheaders`
       is set, will pass along the protocol used by a load balancer if
       reported via an ``X-Scheme`` header.

    .. attribute:: host

       The requested hostname, usually taken from the ``Host`` header.

    .. attribute:: arguments

       GET/POST arguments are available in the arguments property, which
       maps arguments names to lists of values (to support multiple values
       for individual names). Names are of type `str`, while arguments
       are byte strings.  Note that this is different from
       `RequestHandler.get_argument`, which returns argument values as
       unicode strings.

    .. attribute:: files

       File uploads are available in the files property, which maps file
       names to lists of :class:`HTTPFile`.

    .. attribute:: connection

       An HTTP request is attached to a single HTTP connection, which can
       be accessed through the "connection" attribute. Since connections
       are typically kept open in HTTP/1.1, multiple requests can be handled
       sequentially on a single connection.
    *Ó:y*Ó:Ïe
FunctionDefÎ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs<
Name
ctxParam
internalRoleargs"self*Ô:67>
Name
ctxParam
internalRoleargs"method*Ô:67;
Name
ctxParam
internalRoleargs"uri*Ô :67?
Name
internalRoleargs
ctxParam"version*Ô%:67?
Name
ctxParam
internalRoleargs"headers*Ô9:67<
Name
ctxParam
internalRoleargs"body*:67A
Name
internalRoleargs
ctxParam"	remote_ip*:67@
Name
ctxParam
internalRoleargs"protocol*-:67<
Name
internalRoleargs
ctxParam"host*<:67=
Name
ctxParam
internalRoleargs"files*Ò:67B
Name
ctxParam
internalRoleargs"
connection*Ò:67›
arguments.defaults
promotedPropertyListtrue#
StringLiteral"HTTP/1.0*Ô-:y#
Name
ctxLoad"None*ÔA:#
Name
ctxLoad"None*:#
Name
ctxLoad"None*':#
Name
ctxLoad"None*6:#
Name
ctxLoad"None*A:#
Name
ctxLoad"None*Ò:#
Name
ctxLoad"None*Ò)::8*Ô:6ÿ\
FunctionDef.body
promotedPropertyListtrueÿ
AssignÇ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*Ú	:"method*Ú	:É>
Name
ctxLoad
internalRolevalue"method*Ú:Ñ*Ú	:Ç—
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*Û	:"uri*Û	:É;
Name
ctxLoad
internalRolevalue"uri*Û:Ñ*Û	:Ç⁄
AssignÉ
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*Ù	:"version*Ù	:É?
Name
ctxLoad
internalRolevalue"version*Ù:Ñ*Ù	:ÇÅ
AssignÉ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ı	:"headers*ı	:ÉÂ
BoolOp
internalRolevalue 
Or
internalRoleop*ı:&>
Name
ctxLoad
internalRolevalues"headers*ı:÷
Call
internalRolevalues
kwargs<nil>
starargs<nil>á
	Attribute
ctxLoad
internalRolefunc>
Name
ctxLoad
internalRolevalue"httputil*ı#:"HTTPHeaders*ı#:ii*ı#:g*ı:Ñ*ı	:Ç’
AssignÄ
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*ˆ	:"body*ˆ	:Éº
BoolOp
internalRolevalue 
Or
internalRoleop*ˆ:&;
Name
ctxLoad
internalRolevalues"body*ˆ:1
StringLiteral
internalRolevalues*ˆ:y*ˆ:Ñ*ˆ	:Ç»,
If≥
If.body
promotedPropertyListtrueæ
Assign≈
	Attribute
ctxStore
internalRoletargets˘
Name
ctxLoad
internalRolevalueº
PreviousNoops
internalRolenoops_previous

end_lineno376m
NoopLine
internalRolelines"?            # Squid uses X-Forwarded-For, others use X-Real-Ip
*¯:ä*¯:å"self*˘:"	remote_ip*˘:É‡
Call
internalRolevalue
kwargs<nil>
starargs<nil>;
StringLiteral
internalRoleargs"	X-Real-Ip*˙:yjë
Call
internalRoleargs
kwargs<nil>
starargs<nil>A
StringLiteral
internalRoleargs"X-Forwarded-For*˙/:yj?
Name
ctxLoad
internalRoleargs"	remote_ip*˙B:jø
	Attribute
internalRolefunc
ctxLoad~
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*˙:"headers*˙:"get*˙:ii*˙:jgø
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*˘:"headers*˘:"get*˘:ii*˘:gÑ*˘:Ç∆
Ifã
If.body
promotedPropertyListtrueﬁ
AssignÖ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¸:"	remote_ip*¸:ÉA
Name
ctxLoad
internalRolevalue"	remote_ip*¸":Ñ*¸:Ç:Hß
UnaryOp
internalRoletest$
Not
internalRoleop"!*˚:'‘
Call
internalRoleoperand
kwargs<nil>
starargs<nil>Ä
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*˚#:"	remote_ip*˚#:jÅ
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"self*˚:"	_valid_ip*˚:ii*˚:g*˚:G*˚:Fß
AssignÆ
	Attribute
ctxStore
internalRoletargets„
Name
ctxLoad
internalRolevalue¶
PreviousNoops

end_lineno381
internalRolenoops_previousW
NoopLine
internalRolelines")            # AWS uses X-Forwarded-Proto
*˝:ä*˝:å"self*˛:"protocol*˛:É‡
Call
internalRolevalue
kwargs<nil>
starargs<nil>:
StringLiteral
internalRoleargs"X-Scheme*ˇ:yjí
Call
starargs<nil>
internalRoleargs
kwargs<nil>C
StringLiteral
internalRoleargs"X-Forwarded-Proto*ˇ.:yj>
Name
ctxLoad
internalRoleargs"protocol*ˇC:jø
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ˇ:"headers*ˇ:"get*ˇ:ii*ˇ:jgø
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*˛:"headers*˛:"get*˛:ii*˛:gÑ*˛:Ç“
IfÅ
If.body
promotedPropertyListtrue‘
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*Å:"protocol*Å:É8
StringLiteral
internalRolevalue"http*Å!:yÑ*Å:Ç:HΩ
Compare
internalRoletest∆
Compare.comparators
promotedPropertyListtrueç
Tuple
ctxLoad5
StringLiteral
internalRoleelts"http*Ä&:y6
StringLiteral
internalRoleelts"https*Ä.:y*Ä&:z:
	Attribute
internalRoleleft
ctxLoad:
Name
ctxLoad
internalRolevalue"self*Ä:"protocol*Ä:G
Compare.ops
promotedPropertyListtrue
NotIn"not in*Ä::*Ä:G*Ä:F:HÁ
	If.orelse
promotedPropertyListtrueﬁ
AssignÖ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*É:"	remote_ip*É:ÉA
Name
internalRolevalue
ctxLoad"	remote_ip*É:Ñ*É:Ç◊
Ifâ
If.body
promotedPropertyListtrue‹
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*Ö:"protocol*Ö:É@
Name
ctxLoad
internalRolevalue"protocol*Ö!:Ñ*Ö:Ç:H˙
	If.orelse
promotedPropertyListtrueÀ
IfÇ
If.body
promotedPropertyListtrue’
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
internalRolevalue
ctxLoad"self*à:"protocol*à:É9
StringLiteral
internalRolevalue"https*à!:yÑ*à:Ç:HÉ
	If.orelse
promotedPropertyListtrue‘
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ä:"protocol*ä:É8
StringLiteral
internalRolevalue"http*ä!:yÑ*ä:Ç:IØ
BoolOp
internalRoletest!
And
internalRoleop*Ü:%A
Name
ctxLoad
internalRolevalues"
connection*Ü:û
Call
starargs<nil>
internalRolevalues
kwargs<nil>É
	Attribute
ctxLoad
internalRoleargs@
Name
ctxLoad
internalRolevalue"
connection*Ü,:"stream*Ü,:jÜ
	Attribute
ctxLoad
internalRoleargs>
Name
ctxLoad
internalRolevalue"iostream*á,:"SSLIOStream*á,:jA
Name
internalRolefunc
ctxLoad"
isinstance*Ü!:ii*Ü!:g*Ü:G*Ü:F:I>
Name
ctxLoad
internalRoletest"protocol*Ñ:G*Ñ:F:Ió
BoolOp
internalRoletest!
And
internalRoleop*˜:%A
Name
ctxLoad
internalRolevalues"
connection*˜:Ü
	Attribute
internalRolevalues
ctxLoad@
Name
ctxLoad
internalRolevalue"
connection*˜:"xheaders*˜:*˜:G*˜	:F©
AssignÄ
	Attribute
ctxStore
internalRoletargets:
Name
internalRolevalue
ctxLoad"self*ã	:"host*ã	:Éê
BoolOp
internalRolevalue 
Or
internalRoleop*ã:&;
Name
ctxLoad
internalRolevalues"host*ã:∆
Call
internalRolevalues
kwargs<nil>
starargs<nil>6
StringLiteral
internalRoleargs"Host*ã.:yjø
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ã:"headers*ã:"get*ã:ii*ã:g<
StringLiteral
internalRolevalues"	127.0.0.1*ã9:y*ã:Ñ*ã	:ÇŒ
AssignÅ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*å	:"files*å	:É¥
BoolOp
internalRolevalue 
Or
internalRoleop*å:&<
Name
ctxLoad
internalRolevalues"files*å:(
Dict
internalRolevalues*å:t*å:Ñ*å	:Ç‡
AssignÜ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ç	:"
connection*ç	:ÉB
Name
ctxLoad
internalRolevalue"
connection*ç:Ñ*ç	:ÇÎ
Assigná
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*é	:"_start_time*é	:ÉÀ
Call
internalRolevalue
kwargs<nil>
starargs<nil>|
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"time*é:"time*é:ii*é:gÑ*é	:Ç‹
Assignà
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*è	:"_finish_time*è	:É<
Name
internalRolevalue
ctxLoad"None*è:Ñ*è	:Çê
AssignÚ
Tuple
internalRoletargets
ctxStore¸
	Attribute
ctxStore
internalRoleelts∫
Name
ctxLoad
internalRolevalue~
PreviousNoops

end_lineno400
internalRolenoops_previous/
NoopLine
internalRolelines"
*ê:ä*ê:å"self*ë	:"path*ë	:9
Name
internalRoleelts
ctxStore"sep*ë:|
	Attribute
ctxStore
internalRoleelts:
Name
ctxLoad
internalRolevalue"self*ë:"query*ë:*ë	:zÉÖ
Call
kwargs<nil>
starargs<nil>
internalRolevalue3
StringLiteral
internalRoleargs"?*ë4:yjÄ
	Attribute
ctxLoad
internalRolefunc9
Name
ctxLoad
internalRolevalue"uri*ë&:"	partition*ë&:ii*ë&:gÑ*ë	:ÇÓ
AssignD
Name
ctxStore
internalRoletargets"	arguments*í	:Éí
Call
internalRolevalue
kwargs<nil>
starargs<nil>|
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*í$:"query*í$:jE
Name
internalRolefunc
ctxLoad"parse_qs_bytes*í:ii*í:gÑ*í	:Ç∆
AssignÖ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ì	:"	arguments*ì	:É)
Dict
internalRolevalue*ì:tÑ*ì	:Çı

For◊
For.body
promotedPropertyListtrue∏
AssignA
Name
ctxStore
internalRoletargets"values*ï:Éﬂ
ListComp
internalRolevalue5
Name
ctxLoad
internalRoleelt"v*ï:˘
ListComp.generators
promotedPropertyListtrue√
comprehension5
Name
ctxLoad
internalRoleifs"v*ï,:<
Name
internalRoleiter
ctxLoad"values*ï":R:
Name
ctxStore
internalRoletarget"v*ï:Q:T*ï:Ñ*ï:ÇÓ
Ifü
If.body
promotedPropertyListtrueÚ
Assignú
	Subscript
ctxStore
internalRoletargetsZ
Index
internalRoleslice:
Name
ctxLoad
internalRolevalue"name*ó :Ä
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ó:"	arguments*ó:*ó:É>
Name
ctxLoad
internalRolevalue"values*ó(:Ñ*ó:Ç:H<
Name
ctxLoad
internalRoletest"values*ñ:G*ñ:F:S‘
Call
starargs<nil>
internalRoleiter
kwargs<nil>Ü
	Attribute
internalRolefunc
ctxLoad?
Name
ctxLoad
internalRolevalue"	arguments*î:"	iteritems*î:ii*î:gQ≤
Tuple
ctxStore
internalRoletarget:
Name
internalRoleelts
ctxStore"name*î:<
Name
ctxStore
internalRoleelts"values*î:*î:zR*î	:T:3"__init__*Ô:24√
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno408/
NoopLine
internalRolelines"
*ò:ä*ò:å"self*ô:67*ô:6à
FunctionDef.body
promotedPropertyListtrue|
Exprj
StringLiteral
internalRolevalue"8Returns True if this request supports HTTP/1.1 semantics*ö	:y*ö	:‘
Returnø
Compare
internalRolevalueX
Compare.comparators
promotedPropertyListtrue#
StringLiteral"HTTP/1.1*õ :y}
	Attribute
internalRoleleft
ctxLoad:
Name
ctxLoad
internalRolevalue"self*õ:"version*õ:=
Compare.ops
promotedPropertyListtrue
Eq"==*õ:*õ*õ	:`:3"supports_http_1_1*ô:24∑
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno412
internalRolenoops_previous/
NoopLine
internalRolelines"
*ú:ä*ú:å"self*û:67*ù:6°
FunctionDef.body
promotedPropertyListtruej
ExprX
StringLiteral
internalRolevalue"&A dictionary of Cookie.Morsel objects.*ü	:y*ü	:È
If˝
If.body
promotedPropertyListtrueÛ
AssignÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*°:"_cookies*°:É÷
Call
kwargs<nil>
starargs<nil>
internalRolevalueÜ
	Attribute
internalRolefunc
ctxLoad<
Name
internalRolevalue
ctxLoad"Cookie*°:"SimpleCookie*°:ii*°:gÑ*°:Ç⁄
If˛
If.body
promotedPropertyListtrue—
	TryExceptﬁ
Expr
internalRolebodyµ
Call
kwargs<nil>
starargs<nil>
internalRolevalue£
Call
internalRoleargs
kwargs<nil>
starargs<nil>í
	Subscript
ctxLoad
internalRoleargsX
Index
internalRoleslice8
StringLiteral
internalRolevalue"Cookie*•1:y~
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*•$:"headers*•$:*•$:jA
Name
internalRolefunc
ctxLoad"
native_str*•:ii*•:jg¡
	Attribute
ctxLoad
internalRolefunc
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*§:"_cookies*§:"load*§:ii*§:g*§:ÿ
ExceptHandler
internalRolehandlers€
Assign
internalRolebodyÑ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ß:"_cookies*ß:É)
Dict
internalRolevalue*ß%:tÑ*ß:Ç>
Name
ctxLoad
internalRoletype"	Exception*¶:"<nil>*¶:c*£:c:H»
Compare
internalRoletestü
Compare.comparators
promotedPropertyListtrueg
	Attribute
ctxLoad:
Name
ctxLoad
internalRolevalue"self*¢:"headers*¢::8
StringLiteral
internalRoleleft"Cookie*¢:y@
Compare.ops
promotedPropertyListtrue
In"in*¢::*¢:G*¢:F:Hÿ
UnaryOp
internalRoletest$
Not
internalRoleop"!*†:'Ö
Call
kwargs<nil>
starargs<nil>
internalRoleoperand:
Name
ctxLoad
internalRoleargs"self*†:j:
StringLiteral
internalRoleargs"_cookies*†:yj>
Name
internalRolefunc
ctxLoad"hasattr*†:ii*†:g*†:G*†	:Fì
Return
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*®:"_cookies*®:*®	:`:3c
FunctionDef.decorator_list
promotedPropertyListtrue'
Name
ctxLoad"property*ù:"cookies*ù:24√
FunctionDefÊ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno425
internalRolenoops_previous/
NoopLine
internalRolelines"
*©:ä*©:å"self*™:67=
Name
internalRoleargs
ctxParam"chunk*™:67@
Name
ctxParam
internalRoleargs"callback*™:67Z
arguments.defaults
promotedPropertyListtrue#
Name
ctxLoad"None*™%::8*™:6∑
FunctionDef.body
promotedPropertyListtruer
Expr`
StringLiteral
internalRolevalue".Writes the given chunk to the response stream.*´	:y*´	:Ø
Assert
msg<nil>å
Call
internalRoletest
kwargs<nil>
starargs<nil>;
Name
internalRoleargs
ctxLoad"chunk*¨:j@
Name
ctxLoad
internalRoleargs"
bytes_type*¨":jA
Name
ctxLoad
internalRolefunc"
isinstance*¨:ii*¨:g*¨	:f€
Expr»
Call
starargs<nil>
internalRolevalue
kwargs<nil>;
Name
internalRoleargs
ctxLoad"chunk*≠:j≈
	Attribute
ctxLoad
internalRolefuncÅ
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*≠	:"
connection*≠	:"write*≠	:iiv
keyword
internalRolekeywords?
Name
ctxLoad
internalRolevalue"callback*≠/:m"callback*≠:k*≠	:g*≠	::3"write*™:24Ù
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno430
internalRolenoops_previous/
NoopLine
internalRolelines"
*Æ:ä*Æ:å"self*Ø:67*Ø:6ƒ
FunctionDef.body
promotedPropertyListtruev
Exprd
StringLiteral
internalRolevalue"2Finishes this HTTP request on the open connection.*∞	:y*∞	:ß
Exprî
Call
internalRolevalue
kwargs<nil>
starargs<nil>∆
	Attribute
ctxLoad
internalRolefuncÅ
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*±	:"
connection*±	:"finish*±	:ii*±	:g*±	:Ï
Assignà
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*≤	:"_finish_time*≤	:ÉÀ
Call
internalRolevalue
kwargs<nil>
starargs<nil>|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"time*≤:"time*≤:ii*≤:gÑ*≤	:Ç:3"finish*Ø:24ï	
FunctionDefâ
	arguments
vararg<nil>
internalRoleargs
kwarg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno435
internalRolenoops_previous/
NoopLine
internalRolelines"
*≥:ä*≥:å"self*¥:67*¥:6„
FunctionDef.body
promotedPropertyListtrueo
Expr]
StringLiteral
internalRolevalue"+Reconstructs the full URL for this request.*µ	:y*µ	:º
Returnß
BinOp
internalRolevalueÿ
BinOp
internalRoleleftà
BinOp
internalRoleleft
	Attribute
ctxLoad
internalRoleleft:
Name
ctxLoad
internalRolevalue"self*∂:"protocol*∂:%
Add
internalRoleop"+*∂:)6
StringLiteral
internalRoleright"://*∂ :y*∂:%
Add
internalRoleop"+*∂:)|
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*∂(:"host*∂(:*∂&:%
Add
internalRoleop"+*∂:){
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*∂4:"uri*∂4:*∂2:*∂	:`:3"full_url*¥:24⁄
FunctionDefâ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargsº
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno439
internalRolenoops_previous/
NoopLine
internalRolelines"
*∑:ä*∑:å"self*∏:67*∏:6§
FunctionDef.body
promotedPropertyListtrueÉ
Exprq
StringLiteral
internalRolevalue"?Returns the amount of time it took for this request to execute.*π	:y*π	:Ë	
If„
If.body
promotedPropertyListtrue∂
Return°
BinOp
internalRolevalue…
Call
kwargs<nil>
starargs<nil>
internalRoleleft|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"time*ª:"time*ª:ii*ª:g%
Sub
internalRoleop"-*ª:*É
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*ª":"_start_time*ª":*ª:*ª:`:Hü
	If.orelse
promotedPropertyListtrue
Return€
BinOp
internalRolevalueÉ
	Attribute
ctxLoad
internalRoleleft:
Name
ctxLoad
internalRolevalue"self*Ω:"_finish_time*Ω:%
Sub
internalRoleop"-*Ω:*É
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*Ω(:"_start_time*Ω(:*Ω:*Ω:`:Iœ
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"None*∫!::É
	Attribute
internalRoleleft
ctxLoad:
Name
internalRolevalue
ctxLoad"self*∫:"_finish_time*∫:@
Compare.ops
promotedPropertyListtrue
Is"is*∫::*∫:G*∫	:F:3"request_time*∏:24§
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno446
internalRolenoops_previous/
NoopLine
internalRolelines"
*æ:ä*æ:å"self*ø:67*ø:6Á
FunctionDef.body
promotedPropertyListtrue®
Expró
StringLiteral
internalRolevalue"ÊReturns the client's SSL certificate, if any.

        To use client certificates, the HTTPServer must have been constructed
        with cert_reqs set in ssl_options, e.g.::

            server = HTTPServer(app,
                ssl_options=dict(
                    certfile="foo.crt",
                    keyfile="foo.key",
                    cert_reqs=ssl.CERT_REQUIRED,
                    ca_certs="cacert.crt"))

        The return value is a dictionary, see SSLSocket.getpeercert() in
        the standard library for more details.
        http://docs.python.org/library/ssl.html#sslsocket-objects
        *œ:y*œ:Ü
	TryExceptÃ
Return
internalRolebody°
Call
starargs<nil>
internalRolevalue
kwargs<nil>”
	Attribute
internalRolefunc
ctxLoadâ
	Attribute
ctxLoad
internalRolevalue≈
	Attribute
ctxLoad
internalRolevalueÅ
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*—:"
connection*—:"stream*—:"socket*—:"getpeercert*—:ii*—:g*—:`ü
ExceptHandler
internalRolehandlersd
Return
internalRolebody:
Name
ctxLoad
internalRolevalue"None*”:*”:`}
	Attribute
internalRoletype
ctxLoad9
Name
ctxLoad
internalRolevalue"ssl*“:"SSLError*“:"<nil>*“	:c*–	:c:3"get_ssl_certificate*ø:24Ü
FunctionDefâ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>º
Name
internalRoleargs
ctxParam~
PreviousNoops

end_lineno468
internalRolenoops_previous/
NoopLine
internalRolelines"
*‘:ä*‘:å"self*’:67*’:6‘
FunctionDef.body
promotedPropertyListtrueù
Assign@
Name
ctxStore
internalRoletargets"attrs*÷	:É≈
Tuple
internalRolevalue
ctxLoad9
StringLiteral
internalRoleelts"protocol*÷:y5
StringLiteral
internalRoleelts"host*÷:y7
StringLiteral
internalRoleelts"method*÷&:y4
StringLiteral
internalRoleelts"uri*÷0:y8
StringLiteral
internalRoleelts"version*÷7:y:
StringLiteral
internalRoleelts"	remote_ip*÷B:y5
StringLiteral
internalRoleelts"body*◊:y*÷:zÑ*÷	:Çä
Assign?
Name
ctxStore
internalRoletargets"args*ÿ	:É≥
Call
internalRolevalue
kwargs<nil>
starargs<nil>Î
ListComp
internalRoleargs˙
BinOp
internalRoleelt7
StringLiteral
internalRoleleft"%s=%r*ÿ:y&
Mod
internalRoleop"%%*ÿ:-
Tuple
internalRoleright
ctxLoad6
Name
internalRoleelts
ctxLoad"n*ÿ&:ˇ
Call
starargs<nil>
internalRoleelts
kwargs<nil>:
Name
ctxLoad
internalRoleargs"self*ÿ1:j7
Name
ctxLoad
internalRoleargs"n*ÿ7:j>
Name
ctxLoad
internalRolefunc"getattr*ÿ):ii*ÿ):g*ÿ&:z*ÿ:¡
ListComp.generators
promotedPropertyListtrueã
comprehension;
Name
ctxLoad
internalRoleiter"attrs*ÿD:R:
Name
ctxStore
internalRoletarget"n*ÿ?:Q:T*ÿ:jv
	Attribute
ctxLoad
internalRolefunc4
StringLiteral
internalRolevalue", *ÿ:y"join*ÿ:ii*ÿ:gÑ*ÿ	:ÇÒ
Return‹
BinOp
internalRolevalueD
StringLiteral
internalRoleleft"%s(%s, headers=%s)*Ÿ:y&
Mod
internalRoleop"%%*Ÿ:-√
Tuple
ctxLoad
internalRoleright≈
	Attribute
internalRoleelts
ctxLoadÄ
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*⁄:"	__class__*⁄:"__name__*⁄:9
Name
ctxLoad
internalRoleelts"args*⁄&:á
Call
kwargs<nil>
starargs<nil>
internalRoleelts~
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*⁄1:"headers*⁄1:j;
Name
ctxLoad
internalRolefunc"dict*⁄,:ii*⁄,:g*⁄:z*Ÿ:*Ÿ	:`:3"__repr__*’:24≠
FunctionDef≈
	arguments
kwarg<nil>
vararg<nil>
internalRoleargsº
Name
ctxParam
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno475/
NoopLine
internalRolelines"
*€:ä*€:å"self*‹:67:
Name
ctxParam
internalRoleargs"ip*‹:67*‹:6æ
FunctionDef.body
promotedPropertyListtrue∏
	TryExceptï
Assign
internalRolebody>
Name
internalRoletargets
ctxStore"res*ﬁ:É©
Call
internalRolevalue
kwargs<nil>
starargs<nil>8
Name
ctxLoad
internalRoleargs"ip*ﬁ&:j@

NumLiteral
internalRoleargs
NumTypeint"0*ﬁ*:vjÇ
	Attribute
ctxLoad
internalRoleargs<
Name
ctxLoad
internalRolevalue"socket*ﬁ-:"	AF_UNSPEC*ﬁ-:jÑ
	Attribute
ctxLoad
internalRoleargs<
Name
ctxLoad
internalRolevalue"socket*ﬂ&:"SOCK_STREAM*ﬂ&:j@

NumLiteral
NumTypeint
internalRoleargs"0*‡&:vjá
	Attribute
ctxLoad
internalRoleargs<
Name
internalRolevalue
ctxLoad"socket*‡):"AI_NUMERICHOST*‡):jÖ
	Attribute
ctxLoad
internalRolefunc<
Name
ctxLoad
internalRolevalue"socket*ﬁ:"getaddrinfo*ﬁ:ii*ﬁ:gÑ*ﬁ:ÇÓ
Return
internalRolebody√
Call
internalRolevalue
kwargs<nil>
starargs<nil>9
Name
ctxLoad
internalRoleargs"res*·:j;
Name
internalRolefunc
ctxLoad"bool*·:ii*·:g*·:`ó
ExceptHandler
internalRolehandlersŒ
If
internalRolebody{
If.body
promotedPropertyListtrueO
Return;
Name
ctxLoad
internalRolevalue"False*‰:*‰:`:H™
Compare
internalRoletest§
Compare.comparators
promotedPropertyListtruel
	Attribute
ctxLoad<
Name
ctxLoad
internalRolevalue"socket*„:"
EAI_NONAME*„::î
	Subscript
ctxLoad
internalRoleleft`
Index
internalRoleslice@

NumLiteral
NumTypeint
internalRolevalue"0*„:vx
	Attribute
internalRolevalue
ctxLoad7
Name
ctxLoad
internalRolevalue"e*„:"args*„:*„:@
Compare.ops
promotedPropertyListtrue
Eq"==*„::*„:G*„:FU
Raise
internalRolebody
tback<nil>
type<nil>
inst<nil>*Â:e7
Name
ctxStore
internalRolename"e*‚!:Ä
	Attribute
internalRoletype
ctxLoad<
Name
ctxLoad
internalRolevalue"socket*‚:"gaierror*‚:*‚	:c*›	:cN
Return:
Name
ctxLoad
internalRolevalue"True*Ê:*Ê	:`:3"	_valid_ip*‹:24:;"HTTPRequest*ß::*:$