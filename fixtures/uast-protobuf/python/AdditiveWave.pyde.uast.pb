
Module´
Expr
internalRolebodyŽ
StringLiteral
internalRolevalue"_
Additive Wave
by Daniel Shiffman. 

Create a more complex wave by adding two waves together. 
*:y*:²
Assign
internalRolebodyÄ
Name
ctxStore
internalRoletargetsz
PreviousNoops

end_lineno7
internalRolenoops_previous.
NoopLine
internalRolelines"
*:Š*:Œƒ
SameLineNoops
col_end73
internalRolenoops_sameline"9# How far apart should each horizontal location be spaced*:Š"xspacing*:ƒA

NumLiteral
internalRolevalue
NumTypeint"8*:v„*:‚ž
Assign
internalRolebody°
Name
ctxStore
internalRoletargetsl
SameLineNoops
col_end50
internalRolenoops_sameline""# total # of waves to add together*	:Š"maxwaves*	:ƒA

NumLiteral
NumTypeint
internalRolevalue"4*	:v„*	:‚®
Assign
internalRolebody?
Name
internalRoletargets
ctxStore"theta*
:ƒC

NumLiteral
NumTypefloat
internalRolevalue"0*
	:v„*
:‚þ
Assign
internalRolebodyœ
Name
internalRoletargets
ctxStore{
PreviousNoops
internalRolenoops_previous

end_lineno11.
NoopLine
internalRolelines"
*:Š*:ŒZ
SameLineNoops
internalRolenoops_sameline
col_end32"# Height of wave*:Š"	amplitude*:ƒ5
List
ctxLoad
internalRolevalue*:s„*:‚ž
Assign
internalRolebody¼
Name
ctxStore
internalRoletargetsý
PreviousNoops
internalRolenoops_previous

end_lineno14v
NoopLine
internalRolelines"I# Value for incrementing X, to be calculated as a function of period and
*:Š8
NoopLine
internalRolelines"# xspacing
*:Š*:Œ"dx*:ƒ5
List
internalRolevalue
ctxLoad*:s„*:‚¢
Assign
internalRolebodyA
Name
ctxStore
internalRoletargets"yvalues*:ƒ5
List
ctxLoad
internalRolevalue*:s„*:‚è
FunctionDef
returns<nil>
internalRolebodyI
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>*:6Ó
FunctionDef.body
promotedPropertyListtrue©
Expr—
Call
internalRolevalueA

NumLiteral
internalRoleargs
NumTypeint"640*
:vjA

NumLiteral
NumTypeint
internalRoleargs"360*:vjè
Name
ctxLoad
internalRolefunc«
PreviousNoops
internalRolenoops_previous

end_lineno18.
NoopLine
internalRolelines"
*:Š.
NoopLine
internalRolelines"
*:Š*:Œ"size*:ii*:g*:»
Expr©
Call
internalRolevalue@

NumLiteral
NumTypeint
internalRoleargs"30*:vj?
Name
ctxLoad
internalRolefunc"	frameRate*:ii*:g*:¿
Expr­
Call
internalRolevalue8
Name
ctxLoad
internalRoleargs"RGB*:jA

NumLiteral
NumTypeint
internalRoleargs"255*:vjA

NumLiteral
NumTypeint
internalRoleargs"255*:vjA

NumLiteral
NumTypeint
internalRoleargs"255*:vjA

NumLiteral
NumTypeint
internalRoleargs"100*#:vj?
Name
ctxLoad
internalRolefunc"	colorMode*:ii*:g*: 
Assign;
Name
ctxStore
internalRoletargets"w*:ƒÎ
BinOp
internalRolevalue:
Name
ctxLoad
internalRoleleft"width*	:$
Add
internalRoleop"+*:)A

NumLiteral
NumTypeint
internalRoleright"16*:v*	:„*:‚•
For¤
For.body
promotedPropertyListtrue§
Expr•
Call
internalRolevalueè
Call
internalRoleargs@

NumLiteral
NumTypeint
internalRoleargs"10*!:vj@

NumLiteral
internalRoleargs
NumTypeint"30*%:vj<
Name
ctxLoad
internalRolefunc"random*:ii*:jg
	Attribute
internalRolefunc
ctxLoad>
Name
ctxLoad
internalRolevalue"	amplitude*	:"append*	:ii*	:g*	:¹
Assignµ
Name
ctxStore
internalRoletargetss
SameLineNoops
col_end76
internalRolenoops_sameline")# How many pixels before the wave repeats*#:Š"period*	:ƒì
Call
internalRolevalueA

NumLiteral
NumTypeint
internalRoleargs"100*:vjA

NumLiteral
NumTypeint
internalRoleargs"300*:vj<
Name
internalRolefunc
ctxLoad"random*:ii*:g„*	:‚
Exprþ
Call
internalRolevalueÙ
BinOp
internalRoleargsÈ
BinOp
internalRoleleft;
Name
ctxLoad
internalRoleleft"TWO_PI*:$
Div
internalRoleop"/*:,<
Name
ctxLoad
internalRoleright"period*:*:%
Mult
internalRoleop"**:+>
Name
ctxLoad
internalRoleright"xspacing*':*:jz
	Attribute
ctxLoad
internalRolefunc7
Name
ctxLoad
internalRolevalue"dx*	:"append*	:ii*	:g*	::S¢
Call
internalRoleiter=
Name
ctxLoad
internalRoleargs"maxwaves*:j;
Name
ctxLoad
internalRolefunc"range*:ii*:gQ9
Name
ctxStore
internalRoletarget"i*	:R*:T¶
Forª
For.body
promotedPropertyListtrueü
Exprê
Call
internalRolevalueA

NumLiteral
internalRoleargs
NumTypefloat"0*:vj
	Attribute
ctxLoad
internalRolefunc<
Name
internalRolevalue
ctxLoad"yvalues*	:"append*	:ii*	:g*	::S½
Call
internalRoleiter×
BinOp
internalRoleargsÅ
BinOp
internalRoleleft6
Name
internalRoleleft
ctxLoad"w*:$
Div
internalRoleop"/*:,>
Name
ctxLoad
internalRoleright"xspacing*:*:$
Add
internalRoleop"+*:)@

NumLiteral
NumTypeint
internalRoleright"1*#:v*:j;
Name
internalRolefunc
ctxLoad"range*:ii*:gQ9
Name
ctxStore
internalRoletarget"_*	:R*:T:3"setup*:24¨
FunctionDef
internalRolebody
returns<nil>I
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>* :6”
FunctionDef.body
promotedPropertyListtrueê
ExprØ
Call
internalRolevalue?

NumLiteral
NumTypeint
internalRoleargs"0*!:vjî
Name
ctxLoad
internalRolefunc«
PreviousNoops

end_lineno31
internalRolenoops_previous.
NoopLine
internalRolelines"
*:Š.
NoopLine
internalRolelines"
*:Š*:Œ"
background*!:ii*!:g*!:w
Exprf
Call
internalRolevalue>
Name
ctxLoad
internalRolefunc"calcWave*":ii*":g*":y
Exprh
Call
internalRolevalue@
Name
ctxLoad
internalRolefunc"
renderWave*#:ii*#:g*#::3"draw* :24›'
FunctionDef
internalRolebody
returns<nil>I
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs*&:6ƒ&
FunctionDef.body
promotedPropertyListtrueî
	AugAssign%
Add
internalRoleop"+*(:)†ã
Name
ctxStore
internalRoletarget¢
PreviousNoops

end_lineno39
internalRolenoops_previous.
NoopLine
internalRolelines"
*$:Š.
NoopLine
internalRolelines"
*%:Šu
NoopLine
internalRolelines"H    # Increment theta (try different values for 'angular velocity' here
*&:Š*$:Œ"theta*(:‡F

NumLiteral
internalRolevalue
NumTypefloat"0.02*(:vˆ"?=*(:…Î
ForØ
For.body
promotedPropertyListtrueª
AssignÒ
	Subscript
ctxStore
internalRoletargetsV
Index
internalRoleslice6
Name
ctxLoad
internalRolevalue"i*+:<
Name
ctxLoad
internalRolevalue"yvalues*+	:*+	:ƒA

NumLiteral
internalRolevalue
NumTypeint"0*+:v„*+	:‚:S…
Call
internalRoleiterŸ
Call
internalRoleargs<
Name
internalRoleargs
ctxLoad"yvalues**:j9
Name
ctxLoad
internalRolefunc"len**:ii**:jg;
Name
ctxLoad
internalRolefunc"range**:ii**:gQÚ
Name
internalRoletarget
ctxStorež
PreviousNoops

end_lineno41
internalRolenoops_previousQ
NoopLine
internalRolelines"$    # Set all height values to zero
*):Š*):Œ"i**	:R**:T‹
Forø
For.body
promotedPropertyListtrue
Assign;
Name
ctxStore
internalRoletargets"x*.	:ƒ<
Name
ctxLoad
internalRolevalue"theta*.:„*.	:‚º
Foræ
For.body
promotedPropertyListtrueì
Ifƒ
If.body
promotedPropertyListtrueÖ
	AugAssign%
Add
internalRoleop"+*2:)†Ñ
	Subscript
ctxStore
internalRoletargetV
Index
internalRoleslice6
Name
ctxLoad
internalRolevalue"i*2:<
Name
internalRolevalue
ctxLoad"yvalues*2:*2:‡¿
BinOp
internalRolevalue™
Call
internalRoleleft6
Name
ctxLoad
internalRoleargs"x*2#:j9
Name
ctxLoad
internalRolefunc"sin*2:ii*2:g%
Mult
internalRoleop"**2:+Ð
	Subscript
ctxLoad
internalRolerightV
Index
internalRoleslice6
Name
ctxLoad
internalRolevalue"j*22:>
Name
ctxLoad
internalRolevalue"	amplitude*2(:*2(:*2:ˆ"?=*2:…:H…
	If.orelse
promotedPropertyListtrueÖ
	AugAssign%
Add
internalRoleop"+*4:)†Ñ
	Subscript
ctxStore
internalRoletargetV
Index
internalRoleslice6
Name
ctxLoad
internalRolevalue"i*4:<
Name
internalRolevalue
ctxLoad"yvalues*4:*4:‡¿
BinOp
internalRolevalue™
Call
internalRoleleft6
Name
ctxLoad
internalRoleargs"x*4#:j9
Name
internalRolefunc
ctxLoad"cos*4:ii*4:g%
Mult
internalRoleop"**4:+Ð
	Subscript
internalRoleright
ctxLoadV
Index
internalRoleslice6
Name
internalRolevalue
ctxLoad"j*42:>
Name
ctxLoad
internalRolevalue"	amplitude*4(:*4(:*4:ˆ"?=*4:…:IÎ
Compare
internalRoletest`
Compare.comparators
promotedPropertyListtrue(

NumLiteral
NumTypeint"0*1:v:ÿ
BinOp
internalRoleleftì
Name
ctxLoad
internalRoleleft³
PreviousNoops
internalRolenoops_previous

end_lineno48f
NoopLine
internalRolelines"9            # Every other wave is cosine instead of sine
*0:Š*0:Œ"j*1:%
Mod
internalRoleop"%%*1:-@

NumLiteral
NumTypeint
internalRoleright"2*1:v*1:?
Compare.ops
promotedPropertyListtrue
Eq"==*1::*1:G*1:FÉ
	AugAssign%
Add
internalRoleop"+*5:)†:
Name
ctxStore
internalRoletarget"x*5:‡Ê
	Subscript
ctxLoad
internalRolevalueV
Index
internalRoleslice6
Name
ctxLoad
internalRolevalue"j*5:7
Name
internalRolevalue
ctxLoad"dx*5:*5:ˆ"?=*5:…:S…
Call
internalRoleiterŸ
Call
internalRoleargs<
Name
internalRoleargs
ctxLoad"yvalues*/:j9
Name
ctxLoad
internalRolefunc"len*/:ii*/:jg;
Name
ctxLoad
internalRolefunc"range*/:ii*/:gQ9
Name
ctxStore
internalRoletarget"i*/:R*/	:T:S¢
Call
internalRoleiter=
Name
ctxLoad
internalRoleargs"maxwaves*-:j;
Name
ctxLoad
internalRolefunc"range*-:ii*-:gQÚ
Name
ctxStore
internalRoletargetž
PreviousNoops

end_lineno44
internalRolenoops_previousQ
NoopLine
internalRolelines"$    # Accumulate wave height values
*,:Š*,:Œ"j*-	:R*-:T:3"calcWave*&:24Ò
FunctionDef
internalRolebody
returns<nil>I
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>*8:6¸
FunctionDef.body
promotedPropertyListtrue›
Expr‰
Call
internalRolevalueà
Name
ctxLoad
internalRolefuncŸ
PreviousNoops

end_lineno57
internalRolenoops_previous.
NoopLine
internalRolelines"
*6:Š.
NoopLine
internalRolelines"
*7:Šr
NoopLine
internalRolelines"E    # A simple way to draw the wave with an ellipse at each location
*8:Š*6:Œ"noStroke*::ii*::g*::ù
Exprç
Call
internalRolevalueA

NumLiteral
NumTypeint
internalRoleargs"255*;
:vj@

NumLiteral
NumTypeint
internalRoleargs"50*;:vj:
Name
ctxLoad
internalRolefunc"fill*;:ii*;:g*;:¸
Expr¦
Call
internalRolevalue;
Name
ctxLoad
internalRoleargs"CENTER*<:jA
Name
internalRolefunc
ctxLoad"ellipseMode*<:ii*<:g*<:­	
ForÊ
For.body
promotedPropertyListtrueœ
ExprŠ
Call
internalRolevalueÆ
BinOp
internalRoleargs6
Name
ctxLoad
internalRoleleft"x*>:%
Mult
internalRoleop"**>:+>
Name
ctxLoad
internalRoleright"xspacing*>:*>:jÕ
BinOp
internalRoleargsÌ
BinOp
internalRoleleft;
Name
ctxLoad
internalRoleleft"height*>:$
Div
internalRoleop"/*>:,@

NumLiteral
NumTypeint
internalRoleright"2*>(:v*>:$
Add
internalRoleop"+*>:)7
Name
internalRoleright
ctxLoad"v*>,:*>:j@

NumLiteral
internalRoleargs
NumTypeint"16*>/:vj@

NumLiteral
NumTypeint
internalRoleargs"16*>3:vj=
Name
ctxLoad
internalRolefunc"ellipse*>	:ii*>	:g*>	::S¥
Call
internalRoleiter<
Name
ctxLoad
internalRoleargs"yvalues*=:j?
Name
ctxLoad
internalRolefunc"	enumerate*=:ii*=:gQ§
Tuple
ctxStore
internalRoletarget6
Name
internalRoleelts
ctxStore"x*=	:6
Name
ctxStore
internalRoleelts"v*=:*=	:zR*=:T:3"
renderWave*8:24}
RemainderNoops

end_lineno64
internalRolenoops_remainder.
NoopLine
internalRolelines"
*?:Š*?:Œ*:$