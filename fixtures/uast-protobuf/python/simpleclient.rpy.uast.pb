
Moduleô
Expr
internalRolebodyÛ
StringLiteral
internalRolevalueÄ
PreviousNoops

end_lineno5
internalRolenoops_previous.
NoopLine
internalRolelines"
*:äZ
NoopLine
internalRolelines"-# Copyright (c) Twisted Matrix Laboratories.
*:äH
NoopLine
internalRolelines"# See LICENSE for details.
*:ä.
NoopLine
internalRolelines"
*:ä.
NoopLine
internalRolelines"
*:ä*:å"A
An example client. Run simpleserv.py first before running this.
*:y*:∆

ImportFrom

level0
internalRolebodyz
PreviousNoops

end_lineno9
internalRolenoops_previous.
NoopLine
internalRolelines"
*	:ä*	:å
ImportFrom.names
promotedPropertyListtrue%
alias
asname<nil>"reactor:1&
alias
asname<nil>"protocol:1"twisted.internet*
:/á
ClassDef
internalRolebody¿
ClassDef.bases
promotedPropertyListtrueå
	Attribute
ctxLoadﬁ
Name
ctxLoad
internalRolevalueû
PreviousNoops

end_lineno14
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä.
NoopLine
internalRolelines"
*:äA
NoopLine
internalRolelines"# a client protocol
*:ä.
NoopLine
internalRolelines"
*:ä*:å"protocol*:"Protocol*::<ã
ClassDef.body
promotedPropertyListtruex
Exprg
StringLiteral
internalRolevalue"6Once connected, send a message, then print the result.*:y*:«
FunctionDefÑ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>∏
Name
ctxParam
internalRoleargs{
PreviousNoops

end_lineno17
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:å"self*:67*:6ï
FunctionDef.body
promotedPropertyListtrueﬂ
ExprÕ
Call
internalRolevalue
kwargs<nil>
starargs<nil>>
StringLiteral
internalRoleargs"hello, world!*:yj¿
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"self*	:"	transport*	:"write*	:ii*	:g*	::3"connectionMade*:24Û
FunctionDef¡
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>∏
Name
ctxParam
internalRoleargs{
PreviousNoops

end_lineno20
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:å"self*:67;
Name
ctxParam
internalRoleargs"data*:67*:6Ü
FunctionDef.body
promotedPropertyListtrueq
Expr`
StringLiteral
internalRolevalue"/As soon as any data is received, write it back.*	:y*	:≤
Print
dest<nil>

nltrue?
StringLiteral
internalRolevalues"Server said:*:yj;
Name
ctxLoad
internalRolevalues"data*:j"print*	:gi®
Exprñ
Call
kwargs<nil>
starargs<nil>
internalRolevalue…
	Attribute
internalRolefunc
ctxLoad~
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"self*	:"	transport*	:"loseConnection*	:ii*	:g*	::3"dataReceived*:24û
FunctionDef√
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>∏
Name
ctxParam
internalRoleargs{
PreviousNoops

end_lineno25
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:å"self*:67=
Name
internalRoleargs
ctxParam"reason*:67*:6≠
FunctionDef.body
promotedPropertyListtruex
Print
dest<nil>

nltrueB
StringLiteral
internalRolevalues"connection lost*:yj"print*	:gi:3"connectionLost*:24:;"
EchoClient*::‘
ClassDef
internalRolebody°
ClassDef.bases
promotedPropertyListtrueÌ
	Attribute
ctxLoad∫
Name
ctxLoad
internalRolevalue{
PreviousNoops

end_lineno28
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:å"protocol*:"ClientFactory*::<ˆ
ClassDef.body
promotedPropertyListtrueô
AssignB
Name
ctxStore
internalRoletargets"protocol*:ÉA
Name
ctxLoad
internalRolevalue"
EchoClient*:Ñ*:Ç‘
FunctionDefÖ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs∏
Name
internalRoleargs
ctxParam{
PreviousNoops

end_lineno31
internalRolenoops_previous.
NoopLine
internalRolelines"
*:ä*:å"self*  :67@
Name
ctxParam
internalRoleargs"	connector* &:67=
Name
ctxParam
internalRoleargs"reason* 1:67* :6ô
FunctionDef.body
promotedPropertyListtrueÖ
Print
dest<nil>

nltrueO
StringLiteral
internalRolevalues"Connection failed - goodbye!*!:yj"print*!	:gi€
Expr…
Call
internalRolevalue
kwargs<nil>
starargs<nil>}
	Attribute
ctxLoad
internalRolefunc<
Name
ctxLoad
internalRolevalue"reactor*"	:"stop*"	:ii*"	:g*"	::3"clientConnectionFailed* :24–
FunctionDefÖ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs∏
Name
ctxParam
internalRoleargs{
PreviousNoops
internalRolenoops_previous

end_lineno35.
NoopLine
internalRolelines"
*#:ä*#:å"self*$:67@
Name
internalRoleargs
ctxParam"	connector*$$:67=
Name
ctxParam
internalRoleargs"reason*$/:67*$:6ó
FunctionDef.body
promotedPropertyListtrueÉ
Print
dest<nil>

nltrueM
StringLiteral
internalRolevalues"Connection lost - goodbye!*%:yj"print*%	:gi€
Expr…
Call
internalRolevalue
kwargs<nil>
starargs<nil>}
	Attribute
ctxLoad
internalRolefunc<
Name
ctxLoad
internalRolevalue"reactor*&	:"stop*&	:ii*&	:g*&	::3"clientConnectionLost*$:24:;"EchoFactory*::Ø

FunctionDef
internalRolebodyI
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>**:6≠	
FunctionDef.body
promotedPropertyListtrue˝
Assign÷
Name
ctxStore
internalRoletargetsò
PreviousNoops

end_lineno41
internalRolenoops_previous.
NoopLine
internalRolelines"
*':ä.
NoopLine
internalRolelines"
*(:äk
NoopLine
internalRolelines"># this connects the protocol to a server running on port 8000
*):ä*':å"f*+:Éè
Call
internalRolevalue
kwargs<nil>
starargs<nil>A
Name
ctxLoad
internalRolefunc"EchoFactory*+	:ii*+	:gÑ*+:Çö
Exprà
Call
starargs<nil>
internalRolevalue
kwargs<nil>:
StringLiteral
internalRoleargs"	localhost*,:yjB

NumLiteral
NumTypeint
internalRoleargs"8000*,%:vj6
Name
ctxLoad
internalRoleargs"f*,+:jÉ
	Attribute
internalRolefunc
ctxLoad<
Name
ctxLoad
internalRolevalue"reactor*,:"
connectTCP*,:ii*,:g*,:⁄
Expr»
Call
kwargs<nil>
starargs<nil>
internalRolevalue|
	Attribute
ctxLoad
internalRolefunc<
Name
ctxLoad
internalRolevalue"reactor*-:"run*-:ii*-:g*-::3"main**:24”
If
internalRolebody≈
If.body
promotedPropertyListtrueò
ExprÜ
Call
internalRolevalue
kwargs<nil>
starargs<nil>:
Name
internalRolefunc
ctxLoad"main*1:ii*1:g*1::HÂ
Compare
internalRoletestZ
Compare.comparators
promotedPropertyListtrue"
StringLiteral"__main__*0:y:ú
Name
internalRoleleft
ctxLoad‹
PreviousNoops

end_lineno47
internalRolenoops_previous.
NoopLine
internalRolelines"
*.:ä_
NoopLine
internalRolelines"2# this only runs if the module was *not* imported
*/:ä*.:å"__name__*0:?
Compare.ops
promotedPropertyListtrue
Eq"==*0::*0:G*0:F*:$