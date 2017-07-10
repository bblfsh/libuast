
ModuleË
Import
internalRolebodyÓ
PreviousNoops

end_lineno25
internalRolenoops_previous/
NoopLine
internalRolelines"#
*:äS
NoopLine
internalRolelines"&# Cinema 4D Python Plugin Source file
*:äh
NoopLine
internalRolelines";# https://github.com/nr-plugins/nr-xpresso-alignment-tools
*:ä/
NoopLine
internalRolelines"#
*:ä.
NoopLine
internalRolelines"
*:ä=
NoopLine
internalRolelines"# coding: utf-8
*:ä/
NoopLine
internalRolelines"#
*:äU
NoopLine
internalRolelines"(# Copyright (C) 2012, Niklas Rosenstein
*:ä]
NoopLine
internalRolelines"0# Licensed under the GNU General Public License
*	:ä/
NoopLine
internalRolelines"#
*
:äN
NoopLine
internalRolelines"!# XPAT - XPresso Alignment Tools
*:äN
NoopLine
internalRolelines"!# ==============================
*:ä/
NoopLine
internalRolelines"#
*:är
NoopLine
internalRolelines"E# The XPAT plugin provides tools for aligning nodes in the Cinema 4D
*:äp
NoopLine
internalRolelines"C# XPresso Editor, improving readability of complex XPresso set-ups
*:ä<
NoopLine
internalRolelines"# immensively.
*:ä/
NoopLine
internalRolelines"#
*:ä=
NoopLine
internalRolelines"# Requirements:
*:äF
NoopLine
internalRolelines"# - MAXON Cinema 4D R13+
*:äX
NoopLine
internalRolelines"+# - Python `c4dtools` library. Get it from
*:ä]
NoopLine
internalRolelines"0#   http://github.com/NiklasRosenstein/c4dtools
*:ä/
NoopLine
internalRolelines"#
*:äg
NoopLine
internalRolelines":# Author:  Niklas Rosenstein <rosensteinniklas@gmail.com>
*:äI
NoopLine
internalRolelines"# Version: 1.1 (01/06/2012)
*:ä.
NoopLine
internalRolelines"
*:ä*:åN
Import.names
promotedPropertyListtrue 
alias
asname<nil>"os:1*:/x
Import
internalRolebodyO
Import.names
promotedPropertyListtrue!
alias
asname<nil>"sys:1*:/y
Import
internalRolebodyP
Import.names
promotedPropertyListtrue"
alias
asname<nil>"json:1*:/x
Import
internalRolebodyO
Import.names
promotedPropertyListtrue!
alias
asname<nil>"c4d:1*:/}
Import
internalRolebodyT
Import.names
promotedPropertyListtrue&
alias
asname<nil>"c4dtools:1*:/~
Import
internalRolebodyU
Import.names
promotedPropertyListtrue'
alias
asname<nil>"	itertools:1*:/ô

ImportFrom

level0
internalRolebody{
PreviousNoops

end_lineno32
internalRolenoops_previous.
NoopLine
internalRolelines"
* :ä* :åV
ImportFrom.names
promotedPropertyListtrue$
alias
asnamegv"	graphview:1"c4d.modules*!:/°

ImportFrom
internalRolebody

level0Y
ImportFrom.names
promotedPropertyListtrue'
alias
asname<nil>"	graphnode:1"c4dtools.misc*":/á
Assign
internalRolebody∞
Tuple
ctxStore
internalRoletargetsµ
Name
ctxStore
internalRoleelts{
PreviousNoops

end_lineno35
internalRolenoops_previous.
NoopLine
internalRolelines"
*#:ä*#:å"res*$:=
Name
ctxStore
internalRoleelts"importer*$:*$:zÉ©
Call
internalRolevalue=
Name
ctxLoad
internalRoleargs"__file__*$":j<
Name
ctxLoad
internalRoleargs"__res__*$,:jÅ
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"c4dtools*$:"prepare*$:ii*$:gÑ*$:Ç≤
Assign
internalRolebodyB
Name
ctxStore
internalRoletargets"settings*%:É√
Call
internalRolevalueÕ
Dict
internalRoleargsA
StringLiteral
internalRolekeys"options_filename*&:y~·
Call
internalRolevalues<
StringLiteral
internalRoleargs"config.json*&":yjy
	Attribute
ctxLoad
internalRolefunc8
Name
ctxLoad
internalRolevalue"res*&:"file*&:ii*&:g*%(:tj»
	Attribute
ctxLoad
internalRolefuncÄ
	Attribute
ctxLoad
internalRolevalue=
Name
internalRolevalue
ctxLoad"c4dtools*%:"helpers*%:"
Attributor*%:ii*%:gÑ*%:Ç˝w
FunctionDef
internalRolebody
returns<nil>ë
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>æ
arg

annotation<nil>
internalRoleargs{
PreviousNoops
internalRolenoops_previous

end_lineno40.
NoopLine
internalRolelines"
*(:ä*(:å"nodes*):67@
arg

annotation<nil>
internalRoleargs"mode*):67C
arg

annotation<nil>
internalRoleargs"spacing*):67*):6ôt
FunctionDef.body
promotedPropertyListtrueù
Exprç
StringLiteral
internalRolevalue"^
    Aligns the passed nodes horizontally and apply the minimum spacing
    between them.
    *-:y*-:ˇ
Assignº
Name
ctxStore
internalRoletargets{
PreviousNoops

end_lineno46
internalRolenoops_previous.
NoopLine
internalRolelines"
*.:ä*.:å"modes*/:É´
List
ctxLoad
internalRolevalue:
StringLiteral
internalRoleelts"
horizontal*/:y8
StringLiteral
internalRoleelts"vertical*/:y*/:sÑ*/:ÇÎ
IfM
If.body
promotedPropertyListtrue!
Return
value<nil>*1	:`:Hå
UnaryOp
internalRoletest#
Not
internalRoleop"!*0:'<
Name
internalRoleoperand
ctxLoad"nodes*0:*0:G*0:FÃ
If∞
If.body
promotedPropertyListtrueÉ
Raise
cause<nil>‡
Call
internalRoleexc˜
BinOp
internalRoleargsL
StringLiteral
internalRoleleft"invalid mode, choices are: *3:y$
Add
internalRoleop"+*3:)Ÿ
Call
internalRoleright:
Name
ctxLoad
internalRoleargs"modes*3D:jt
	Attribute
ctxLoad
internalRolefunc3
StringLiteral
internalRolevalue", *3::y"join*3::ii*3::g*3:j@
Name
ctxLoad
internalRolefunc"
ValueError*3:ii*3:g*3	:e:Hâ
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"modes*2::9
Name
ctxLoad
internalRoleleft"mode*2:F
Compare.ops
promotedPropertyListtrue
NotIn"not in*2::*2:G*2:Fı
Assignº
Name
ctxStore
internalRoletargets{
PreviousNoops

end_lineno52
internalRolenoops_previous.
NoopLine
internalRolelines"
*4:ä*4:å"get_0*5:É°
Lambda
internalRolevalueÅ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>9
arg

annotation<nil>
internalRoleargs"x*5*5r
	Attribute
ctxLoad
internalRolebody6
Name
ctxLoad
internalRolevalue"x*5:"x*5:*5:Ñ*5:Ç˜
Assign?
Name
ctxStore
internalRoletargets"get_1*6:É°
Lambda
internalRolevalueÅ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs9
arg

annotation<nil>
internalRoleargs"x*6*6r
	Attribute
internalRolebody
ctxLoad6
Name
internalRolevalue
ctxLoad"x*6:"y*6:*6:Ñ*6:Ç…
Assign?
Name
ctxStore
internalRoletargets"set_0*7:ÉÛ
Lambda
internalRolevalueº
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>9
arg

annotation<nil>
internalRoleargs"x*79
arg

annotation<nil>
internalRoleargs"v*7*7à
Call
internalRolebody6
Name
ctxLoad
internalRoleargs"x*7":j2
StringLiteral
internalRoleargs"x*7%:yj6
Name
internalRoleargs
ctxLoad"v*7*:j=
Name
internalRolefunc
ctxLoad"setattr*7:ii*7:g*7:Ñ*7:Ç…
Assign?
Name
internalRoletargets
ctxStore"set_1*8:ÉÛ
Lambda
internalRolevalueº
	arguments
vararg<nil>
internalRoleargs
kwarg<nil>9
arg
internalRoleargs

annotation<nil>"x*89
arg

annotation<nil>
internalRoleargs"v*8*8à
Call
internalRolebody6
Name
ctxLoad
internalRoleargs"x*8":j2
StringLiteral
internalRoleargs"y*8%:yj6
Name
ctxLoad
internalRoleargs"v*8*:j=
Name
internalRolefunc
ctxLoad"setattr*8:ii*8:g*8:Ñ*8:Ç¨	
Ifö
If.body
promotedPropertyListtrueı
Assign±
Tuple
ctxStore
internalRoletargets:
Name
ctxStore
internalRoleelts"get_0*;	::
Name
internalRoleelts
ctxStore"get_1*;:*;	:zÉ¨
Tuple
internalRolevalue
ctxLoad9
Name
ctxLoad
internalRoleelts"get_1*;:9
Name
ctxLoad
internalRoleelts"get_0*;:*;:zÑ*;	:Çı
Assign±
Tuple
ctxStore
internalRoletargets:
Name
internalRoleelts
ctxStore"set_0*<	::
Name
ctxStore
internalRoleelts"set_1*<:*<	:zÉ¨
Tuple
ctxLoad
internalRolevalue9
Name
internalRoleelts
ctxLoad"set_1*<:9
Name
ctxLoad
internalRoleelts"set_0*<:*<:zÑ*<	:Ç:Hˇ
Compare
internalRoletestZ
Compare.comparators
promotedPropertyListtrue"
StringLiteral"vertical*::y:∂
Name
ctxLoad
internalRoleleft{
PreviousNoops

end_lineno57
internalRolenoops_previous.
NoopLine
internalRolelines"
*9:ä*9:å"mode*::?
Compare.ops
promotedPropertyListtrue
Eq"==*:::*::G*::F∂
Assignº
Name
ctxStore
internalRoletargets{
PreviousNoops

end_lineno61
internalRolenoops_previous.
NoopLine
internalRolelines"
*=:ä*=:å"nodes*>:É‚
ListComp
internalRolevalue„
Call
internalRoleelt6
Name
ctxLoad
internalRoleargs"n*>":jÑ
	Attribute
ctxLoad
internalRolefunc>
Name
ctxLoad
internalRolevalue"	graphnode*>:"	GraphNode*>:ii*>:gŒ
ListComp.generators
promotedPropertyListtrueò
comprehension
is_async0:
Name
ctxLoad
internalRoleiter"nodes*>.:R9
Name
ctxStore
internalRoletarget"n*>):Q:T*>:Ñ*>:Ç˜
ExprÂ
Call
internalRolevalue{
	Attribute
internalRolefunc
ctxLoad:
Name
ctxLoad
internalRolevalue"nodes*?:"sort*?:iiø
keyword
internalRolekeywordsç
Lambda
internalRolevalueÅ
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>9
arg
internalRoleargs

annotation<nil>"n*?*?ﬁ
Call
internalRolebodyz
	Attribute
internalRoleargs
ctxLoad6
Name
ctxLoad
internalRolevalue"n*?$:"position*?$:j;
Name
ctxLoad
internalRolefunc"get_0*?:ii*?:g*?:m"key*?:k*?:g*?:…
AssignB
Name
internalRoletargets
ctxStore"midpoint*@:É
Call
internalRolevalue:
Name
internalRoleargs
ctxLoad"nodes*@):jâ
	Attribute
internalRolefunc
ctxLoad>
Name
ctxLoad
internalRolevalue"	graphnode*@:"find_nodes_mid*@:ii*@:gÑ*@:Ç™
Assign˘
Name
ctxStore
internalRoletargetsÆ
PreviousNoops

end_lineno68
internalRolenoops_previous.
NoopLine
internalRolelines"
*A:äz
NoopLine
internalRolelines"M    # Apply the spacing between the nodes relative to the coordinate-systems
*B:äw
NoopLine
internalRolelines"J    # origin. We can offset them later because we now the nodes' midpoint
*C:ä<
NoopLine
internalRolelines"    # already.
*D:ä*A:å"first_position*E:Éô
	Attribute
ctxLoad
internalRolevalue“
	Subscript
ctxLoad
internalRolevalue_
Index
internalRoleslice?

NumLiteral
NumTypeint
internalRolevalue"0*E:v:
Name
internalRolevalue
ctxLoad"nodes*E:*E"position*E:Ñ*E:Çí
AssignG
Name
internalRoletargets
ctxStore"new_positions*F:É5
List
ctxLoad
internalRolevalue*F:sÑ*F:Çú
AssignE
Name
ctxStore
internalRoletargets"prev_offset*G:ÉA

NumLiteral
NumTypeint
internalRolevalue"0*G:vÑ*G:Ç◊ 
ForÃ
For.body
promotedPropertyListtrueä
AssignÙ
Name
internalRoletargets
ctxStoreØ
PreviousNoops
internalRolenoops_previous

end_lineno73b
NoopLine
internalRolelines"5        # Compute the relative position of the node.
*I:ä*I:å"position*J	:É
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"node*J:"position*J:Ñ*J	:Ç’
Expr√
Call
internalRolevalue=
Name
ctxLoad
internalRoleargs"position*K:jû
BinOp
internalRoleargs¢
Call
internalRoleleft=
Name
ctxLoad
internalRoleargs"position*K:j;
Name
ctxLoad
internalRolefunc"get_0*K:ii*K:g$
Sub
internalRoleop"-*K:*©
Call
internalRolerightC
Name
ctxLoad
internalRoleargs"first_position*K1:j;
Name
internalRolefunc
ctxLoad"get_0*K+:ii*K+:g*K:j;
Name
ctxLoad
internalRolefunc"set_0*K	:ii*K	:g*K	:≈
Assign≥
Name
ctxStore
internalRoletargetsÚ
PreviousNoops

end_lineno77
internalRolenoops_previous.
NoopLine
internalRolelines"
*L:äu
NoopLine
internalRolelines"H        # Obtain it's size and check if the node needs to be re-placed.
*M:ä*L:å"size*N	:É{
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"node*N:"size*N:Ñ*N	:Çï
Ifﬁ
If.body
promotedPropertyListtrueˆ
Expr‰
Call
internalRolevalue=
Name
ctxLoad
internalRoleargs"position*P:j@
Name
ctxLoad
internalRoleargs"prev_offset*P:j;
Name
ctxLoad
internalRolefunc"set_0*P:ii*P:g*P:∏
	AugAssign%
Add
internalRoleop"+*Q:)ÜD
Name
ctxStore
internalRoletarget"prev_offset*Q:áØ
BinOp
internalRolevalue<
Name
ctxLoad
internalRoleleft"spacing*Q:$
Add
internalRoleop"+*Q:)ü
Call
internalRoleright9
Name
internalRoleargs
ctxLoad"size*Q,:j;
Name
ctxLoad
internalRolefunc"get_0*Q&:ii*Q&:g*Q:à"?=*Q:Ö:H∞
	If.orelse
promotedPropertyListtrueÅ
AssignE
Name
ctxStore
internalRoletargets"prev_offset*S:É•
BinOp
internalRolevalueî
BinOp
internalRoleleft¢
Call
internalRoleleft=
Name
ctxLoad
internalRoleargs"position*S!:j;
Name
internalRolefunc
ctxLoad"get_0*S:ii*S:g$
Add
internalRoleop"+*S:)ü
Call
internalRoleright9
Name
ctxLoad
internalRoleargs"size*S3:j;
Name
ctxLoad
internalRolefunc"get_0*S-:ii*S-:g*S:$
Add
internalRoleop"+*S:)=
Name
ctxLoad
internalRoleright"spacing*S;:*S9:Ñ*S:Ç:IÒ
Compare
internalRoletesta
Compare.comparators
promotedPropertyListtrue)
Name
ctxLoad"prev_offset*O::¢
Call
internalRoleleft=
Name
ctxLoad
internalRoleargs"position*O:j;
Name
ctxLoad
internalRolefunc"get_0*O:ii*O:g>
Compare.ops
promotedPropertyListtrue
Lt"<*O::*O:G*O	:F◊
Expr≈
Call
internalRolevalue=
Name
ctxLoad
internalRoleargs"position*U:j¢
Call
internalRoleargs=
Name
internalRoleargs
ctxLoad"midpoint*U:j;
Name
ctxLoad
internalRolefunc"get_1*U:ii*U:jg∏
Name
ctxLoad
internalRolefunc{
PreviousNoops

end_lineno84
internalRolenoops_previous.
NoopLine
internalRolelines"
*T:ä*T:å"set_1*U	:ii*U	:g*U	:ˇ
ExprÌ
Call
internalRolevalue=
Name
ctxLoad
internalRoleargs"position*V:jÖ
	Attribute
internalRolefunc
ctxLoadB
Name
ctxLoad
internalRolevalue"new_positions*V	:"append*V	:ii*V	:g*V	::S:
Name
ctxLoad
internalRoleiter"nodes*H:Q<
Name
ctxStore
internalRoletarget"node*H	:R*H:Tˆ
Assigné
Name
ctxStore
internalRoletargets»
PreviousNoops

end_lineno88
internalRolenoops_previous.
NoopLine
internalRolelines"
*W:äK
NoopLine
internalRolelines"    # Center the nodes again.
*X:ä*W:å"	bbox_size*Y:É–
BinOp
internalRolevalue@
Name
internalRoleleft
ctxLoad"prev_offset*Y:$
Sub
internalRoleop"-*Y:*=
Name
ctxLoad
internalRoleright"spacing*Y:*Y:Ñ*Y:Ç≤
AssignE
Name
ctxStore
internalRoletargets"bbox_size_2*Z:É÷
BinOp
internalRolevalue>
Name
ctxLoad
internalRoleleft"	bbox_size*Z:%
Mult
internalRoleop"**Z:+D

NumLiteral
NumTypefloat
internalRoleright"0.5*Z:v*Z:Ñ*Z:Ç„
ForÙ
For.body
promotedPropertyListtrueÎ

ExprŸ

Call
internalRolevalue=
Name
ctxLoad
internalRoleargs"position*`:j∫
BinOp
internalRoleargs´
BinOp
internalRoleleftò
BinOp
internalRoleleft¢
Call
internalRoleleft=
Name
ctxLoad
internalRoleargs"midpoint*`:j;
Name
ctxLoad
internalRolefunc"get_0*`:ii*`:g$
Add
internalRoleop"+*`:)£
Call
internalRoleright=
Name
ctxLoad
internalRoleargs"position*`1:j;
Name
ctxLoad
internalRolefunc"get_0*`+:ii*`+:g*`:$
Sub
internalRoleop"-*`:*A
Name
ctxLoad
internalRoleright"bbox_size_2*`=:*`;:$
Add
internalRoleop"+*`:)=
Name
ctxLoad
internalRoleright"spacing*`K:*`I:j¥
Name
ctxLoad
internalRolefuncˆ
PreviousNoops

end_lineno95
internalRolenoops_previousv
NoopLine
internalRolelines"I        # TODO: Here is some issue with offsetting the nodes. Some value
*\:äy
NoopLine
internalRolelines"L        # dependent on the spacing must be added here to not make the nodes
*]:ät
NoopLine
internalRolelines"G        # move horizontally/vertically although they have already been
*^:ä@
NoopLine
internalRolelines"        # aligned.
*_:ä*\:å"set_0*`	:ii*`	:g*`	:ÿ
AssignÇ
	Attribute
ctxStore
internalRoletargets9
Name
ctxLoad
internalRolevalue"node*a	:"position*a	:É?
Name
ctxLoad
internalRolevalue"position*a:Ñ*a	:Ç:Sß
Call
internalRoleiter:
Name
ctxLoad
internalRoleargs"nodes*[*:jB
Name
internalRoleargs
ctxLoad"new_positions*[1:j
	Attribute
ctxLoad
internalRolefunc>
Name
ctxLoad
internalRolevalue"	itertools*[:"izip*[:ii*[:gQ±
Tuple
ctxStore
internalRoletarget9
Name
ctxStore
internalRoleelts"node*[	:=
Name
ctxStore
internalRoleelts"position*[:*[	:zR*[:T:3"align_nodes*):24±
FunctionDef
returns<nil>
internalRolebodyŒ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargsΩ
arg

annotation<nil>
internalRoleargs{
PreviousNoops

end_lineno98
internalRolenoops_previous.
NoopLine
internalRolelines"
*b:ä*b:å"mode*c:67C
arg

annotation<nil>
internalRoleargs"spacing*c :67*c:6á
FunctionDef.body
promotedPropertyListtrueø
Assign@
Name
ctxStore
internalRoletargets"master*d:ÉË
Call
internalRolevalue?

NumLiteral
NumTypeint
internalRoleargs"0*d:vj}
	Attribute
ctxLoad
internalRolefunc7
Name
ctxLoad
internalRolevalue"gv*d:"	GetMaster*d:ii*d:gÑ*d:ÇÏ
IfM
If.body
promotedPropertyListtrue!
Return
value<nil>*f	:`:Hç
UnaryOp
internalRoletest#
Not
internalRoleop"!*e:'=
Name
internalRoleoperand
ctxLoad"master*e:*e:G*e:F˝
Assignº
Name
internalRoletargets
ctxStore|
PreviousNoops

end_lineno103
internalRolenoops_previous.
NoopLine
internalRolelines"
*g:ä*g:å"root*h:É©
Call
internalRolevalue
	Attribute
ctxLoad
internalRolefunc;
Name
ctxLoad
internalRolevalue"master*h:"GetRoot*h:ii*h:gÑ*h:ÇÍ
IfM
If.body
promotedPropertyListtrue!
Return
value<nil>*j	:`:Hã
UnaryOp
internalRoletest#
Not
internalRoleop"!*i:';
Name
ctxLoad
internalRoleoperand"root*i:*i:G*i:F…
AssignΩ
Name
internalRoletargets
ctxStore|
PreviousNoops

end_lineno107
internalRolenoops_previous.
NoopLine
internalRolelines"
*k:ä*k:å"nodes*l:ÉÙ
Call
internalRolevalue9
Name
ctxLoad
internalRoleargs"root*l+:jé
	Attribute
internalRolefunc
ctxLoad>
Name
ctxLoad
internalRolevalue"	graphnode*l:"find_selected_nodes*l:ii*l:gÑ*l:Çü
If”
If.body
promotedPropertyListtrueπ
Exprß
Call
internalRolevalue
	Attribute
internalRolefunc
ctxLoad;
Name
ctxLoad
internalRolevalue"master*n	:"AddUndo*n	:ii*n	:g*n	:∞
Exprû
Call
internalRolevalue:
Name
internalRoleargs
ctxLoad"nodes*o:j9
Name
ctxLoad
internalRoleargs"mode*o:j<
Name
ctxLoad
internalRoleargs"spacing*o":jA
Name
ctxLoad
internalRolefunc"align_nodes*o	:ii*o	:g*o	:∑
Expr•
Call
internalRolevalue}
	Attribute
internalRolefunc
ctxLoad8
Name
ctxLoad
internalRolevalue"c4d*p	:"EventAdd*p	:ii*p	:g*p	::H:
Name
ctxLoad
internalRoletest"nodes*m:G*m:F≈
Return±
BoolLiteral
internalRolevalue|
PreviousNoops

end_lineno113
internalRolenoops_previous.
NoopLine
internalRolelines"
*q:ä*q:å"true*r:o*r:`:3"align_nodes_shortcut*c:24ÜK
ClassDef
internalRolebody„
ClassDef.bases
promotedPropertyListtrueØ
	Attribute
ctxLoadˇ
	Attribute
ctxLoad
internalRolevalueª
Name
ctxLoad
internalRolevalue|
PreviousNoops

end_lineno115
internalRolenoops_previous.
NoopLine
internalRolelines"
*s:ä*s:å"c4dtools*t:"helpers*t:"
Attributor*t::<ÂG
ClassDef.body
promotedPropertyListtrueß
Expró
StringLiteral
internalRolevalue"h
    This class organizes the options for the XPAT plugin, i.e.
    validating, loading and saving.
    *x:y*x:˙
Assign¿
Name
ctxStore
internalRoletargets|
PreviousNoops

end_lineno121
internalRolenoops_previous.
NoopLine
internalRolelines"
*y:ä*y:å"defaults*z:É¢
Dict
internalRolevalue7
StringLiteral
internalRolekeys"hspace*{	:y~7
StringLiteral
internalRolekeys"vspace*|	:y~B

NumLiteral
NumTypeint
internalRolevalues"50*{:vB

NumLiteral
NumTypeint
internalRolevalues"20*|:v*z:tÑ*z:Ç˙
FunctionDef
returns<nil>¶
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>æ
arg
internalRoleargs

annotation<nil>|
PreviousNoops

end_lineno126
internalRolenoops_previous.
NoopLine
internalRolelines"
*~:ä*~:å"self*:67D
arg

annotation<nil>
internalRoleargs"filename*:67T
arguments.defaults
promotedPropertyListtrue
NoneLiteral"<nil>*!:u:8*:6ö
FunctionDef.body
promotedPropertyListtrueÈ
Expr÷
Call
internalRolevalue¨
	Attribute
ctxLoad
internalRolefuncÂ
Call
internalRolevalueB
Name
ctxLoad
internalRoleargs"XPAT_Options*Ä:j:
Name
ctxLoad
internalRoleargs"self*Ä:j<
Name
internalRolefunc
ctxLoad"super*Ä	:ii*Ä	:g"__init__*Ä	:ii*Ä	:g*Ä	:¯
ExprÂ
Call
internalRolevalue>
Name
ctxLoad
internalRoleargs"filename*Å:j|
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"self*Å	:"load*Å	:ii*Å	:g*Å	::3"__init__*:24£
FunctionDef
returns<nil>¨
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg
internalRoleargs

annotation<nil>~
PreviousNoops

end_lineno130
internalRolenoops_previous/
NoopLine
internalRolelines"
*Ç:ä*Ç:å"self*É:67E
arg

annotation<nil>
internalRoleargs"filename*É:67U
arguments.defaults
promotedPropertyListtrue
NoneLiteral"<nil>*É:u:8*É:6¿
FunctionDef.body
promotedPropertyListtrueÔ
Exprﬁ
StringLiteral
internalRolevalue"≠
        Load the options from file pointed to by filename. If filename
        is None, it defaults to the filename defined in options in the
        global scope.
        *à:y*à:Æ
Ifï
If.body
promotedPropertyListtrueË
AssignC
Name
ctxStore
internalRoletargets"filename*ã:Éç
	Attribute
internalRolevalue
ctxLoad>
Name
ctxLoad
internalRolevalue"settings*ã:"options_filename*ã:Ñ*ã:Ç:HÖ
Compare
internalRoletestV
Compare.comparators
promotedPropertyListtrue
NoneLiteral"<nil>*ä:u:æ
Name
internalRoleleft
ctxLoad~
PreviousNoops

end_lineno137
internalRolenoops_previous/
NoopLine
internalRolelines"
*â:ä*â:å"filename*ä:@
Compare.ops
promotedPropertyListtrue
Is"is*ä::*ä:G*ä	:FÁ
If∂

If.body
promotedPropertyListtrueá
AssignÅ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*é:"dict_*é:ÉÌ
Call
internalRolevalue¡
	Attribute
ctxLoad
internalRolefunc
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*é:"defaults*é:"copy*é:ii*é:gÑ*é:Çˇ
Withã
	With.body
promotedPropertyListtrueﬂ
ExprÃ
Call
internalRolevalueﬂ
Call
internalRoleargs8
Name
internalRoleargs
ctxLoad"fp*ê-:j|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"json*ê#:"load*ê#:ii*ê#:jg¿
	Attribute
internalRolefunc
ctxLoad|
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ê:"dict_*ê:"update*ê:ii*ê:g*ê:ﬁ

With.items
promotedPropertyListtrue±
withitem·
Call
internalRolecontext_expr>
Name
ctxLoad
internalRoleargs"filename*è:j4
StringLiteral
internalRoleargs"rb*è!:yj;
Name
ctxLoad
internalRolefunc"open*è:ii*è:gA
Name
ctxStore
internalRoleoptional_vars"fp*è*:*è:_:HÒ
	If.orelse
promotedPropertyListtrueá
AssignÅ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*í:"dict_*í:ÉÌ
Call
internalRolevalue¡
	Attribute
ctxLoad
internalRolefunc
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*í:"defaults*í:"copy*í:ii*í:gÑ*í:Ç∏
Expr•
Call
internalRolevalue|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*ì:"save*ì:ii*ì:g*ì::I©
Call
internalRoletest>
Name
ctxLoad
internalRoleargs"filename*ç:jø
	Attribute
ctxLoad
internalRolefunc˙
	Attribute
ctxLoad
internalRolevalue∏
Name
ctxLoad
internalRolevalue~
PreviousNoops

end_lineno140
internalRolenoops_previous/
NoopLine
internalRolelines"
*å:ä*å:å"os*ç:"path*ç:"isfile*ç:ii*ç:gG*ç	:F:3"load*É:24Ë
FunctionDef
returns<nil>¨
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg

annotation<nil>
internalRoleargs~
PreviousNoops

end_lineno148
internalRolenoops_previous/
NoopLine
internalRolelines"
*î:ä*î:å"self*ï:67E
arg
internalRoleargs

annotation<nil>"filename*ï:67U
arguments.defaults
promotedPropertyListtrue
NoneLiteral"<nil>*ï:u:8*ï:6Ö
FunctionDef.body
promotedPropertyListtrueä
Exprz
StringLiteral
internalRolevalue"J
        Save the options defined in XPAT_Options instance to HD.
        *ò:y*ò:Æ
Ifï
If.body
promotedPropertyListtrueË
AssignC
Name
ctxStore
internalRoletargets"filename*õ:Éç
	Attribute
ctxLoad
internalRolevalue>
Name
internalRolevalue
ctxLoad"settings*õ:"options_filename*õ:Ñ*õ:Ç:HÖ
Compare
internalRoletestV
Compare.comparators
promotedPropertyListtrue
NoneLiteral"<nil>*ö:u:æ
Name
ctxLoad
internalRoleleft~
PreviousNoops

end_lineno153
internalRolenoops_previous/
NoopLine
internalRolelines"
*ô:ä*ô:å"filename*ö:@
Compare.ops
promotedPropertyListtrue
Is"is*ö::*ö:G*ö	:Fæ

Assign¡
Name
internalRoletargets
ctxStore~
PreviousNoops

end_lineno156
internalRolenoops_previous/
NoopLine
internalRolelines"
*ú:ä*ú:å"values*ù	:É‰
Call
internalRolevalue˚
GeneratorExp
internalRoleargs£
Tuple
ctxLoad
internalRoleelt6
Name
ctxLoad
internalRoleelts"k*ù:6
Name
ctxLoad
internalRoleelts"v*ù:*ù:z§
comprehension
internalRole
generators
is_async0«
Compare
internalRoleifs†
Compare.comparators
promotedPropertyListtrueh
	Attribute
ctxLoad:
Name
ctxLoad
internalRolevalue"self*û:"defaults*û::7
Name
ctxLoad
internalRoleleft"k*û:@
Compare.ops
promotedPropertyListtrue
In"in*û::*û:GÌ
Call
internalRoleiter√
	Attribute
ctxLoad
internalRolefunc|
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*ù*:"dict_*ù*:"	iteritems*ù*:ii*ù*:gR™
Tuple
internalRoletarget
ctxStore7
Name
ctxStore
internalRoleelts"k*ù":7
Name
ctxStore
internalRoleelts"v*ù%:*ù":zQ:T*ù:j;
Name
ctxLoad
internalRolefunc"dict*ù:ii*ù:gÑ*ù	:Ç–
With‹
	With.body
promotedPropertyListtrue∞
Exprù
Call
internalRolevalue<
Name
ctxLoad
internalRoleargs"values*†:j8
Name
internalRoleargs
ctxLoad"fp*†:j|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"json*†:"dump*†:ii*†:g*†:ﬁ

With.items
promotedPropertyListtrue±
withitem·
Call
internalRolecontext_expr>
Name
internalRoleargs
ctxLoad"filename*ü:j4
StringLiteral
internalRoleargs"wb*ü:yj;
Name
ctxLoad
internalRolefunc"open*ü:ii*ü:gA
Name
internalRoleoptional_vars
ctxStore"fp*ü&:*ü	:_:3"save*ï:24:;"XPAT_Options*t::¿(
ClassDef
internalRolebody›
ClassDef.bases
promotedPropertyListtrue©
	Attribute
ctxLoad˙
	Attribute
ctxLoad
internalRolevalueπ
Name
ctxLoad
internalRolevalue~
PreviousNoops

end_lineno161
internalRolenoops_previous/
NoopLine
internalRolelines"
*°:ä*°:å"c4d*¢:"gui*¢:"GeDialog*¢::<û%
ClassDef.body
promotedPropertyListtrue‚
Expr—
StringLiteral
internalRolevalue"†
    This class implements the behavior of the XPAT options dialog,
    taking care of storing the options on the HD and loading them
    again on startup.
    *ß:y*ß:…
FunctionDef
returns<nil>á
	arguments
vararg<nil>
internalRoleargs
kwarg<nil>∫
arg

annotation<nil>
internalRoleargsˆ
PreviousNoops

end_lineno170
internalRolenoops_previous/
NoopLine
internalRolelines"
*®:äE
NoopLine
internalRolelines"    # c4d.gui.GeDialog
*©:ä/
NoopLine
internalRolelines"
*™:ä*®:å"self*´:67*´:6É
FunctionDef.body
promotedPropertyListtrueÕ
Return∏
Call
internalRolevalueÅ
	Attribute
internalRoleargs
ctxLoad9
Name
ctxLoad
internalRolevalue"res*¨(:"DLG_OPTIONS*¨(:jä
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*¨:"LoadDialogResource*¨:ii*¨:g*¨	:`:3"CreateLayout*´:24–

FunctionDef
returns<nil>é
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg

annotation<nil>
internalRoleargs~
PreviousNoops

end_lineno173
internalRolenoops_previous/
NoopLine
internalRolelines"
*≠:ä*≠:å"self*Æ:67*Æ:6Ö
FunctionDef.body
promotedPropertyListtrue¡
ExprÆ
Call
internalRolevalueÄ
	Attribute
internalRoleargs
ctxLoad9
Name
ctxLoad
internalRolevalue"res*Ø:"
EDT_HSPACE*Ø:jÄ
	Attribute
ctxLoad
internalRoleargs=
Name
internalRolevalue
ctxLoad"options*Ø&:"hspace*Ø&:j
	Attribute
internalRolefunc
ctxLoad:
Name
ctxLoad
internalRolevalue"self*Ø	:"SetLong*Ø	:ii*Ø	:g*Ø	:¡
ExprÆ
Call
internalRolevalueÄ
	Attribute
ctxLoad
internalRoleargs9
Name
internalRolevalue
ctxLoad"res*∞:"
EDT_VSPACE*∞:jÄ
	Attribute
ctxLoad
internalRoleargs=
Name
ctxLoad
internalRolevalue"options*∞&:"vspace*∞&:j
	Attribute
internalRolefunc
ctxLoad:
Name
ctxLoad
internalRolevalue"self*∞	:"SetLong*∞	:ii*∞	:g*∞	:H
Return4
BoolLiteral
internalRolevalue"true*±:o*±	:`:3"
InitValues*Æ:24Á
FunctionDef
returns<nil>ë
	arguments
vararg<nil>
internalRoleargs
kwarg<nil>¡
arg

annotation<nil>
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno178/
NoopLine
internalRolelines"
*≤:ä*≤:å"self*≥:67?
arg

annotation<nil>
internalRoleargs"id*≥:67@
arg

annotation<nil>
internalRoleargs"msg*≥:67*≥:6ú
FunctionDef.body
promotedPropertyListtrueú
If¿

If.body
promotedPropertyListtrueÀ
AssignÖ
	Attribute
ctxStore
internalRoletargets=
Name
ctxLoad
internalRolevalue"options*µ:"hspace*µ:É≠
Call
internalRolevalueÄ
	Attribute
ctxLoad
internalRoleargs9
Name
ctxLoad
internalRolevalue"res*µ+:"
EDT_HSPACE*µ+:j
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*µ:"GetLong*µ:ii*µ:gÑ*µ:ÇÀ
AssignÖ
	Attribute
ctxStore
internalRoletargets=
Name
ctxLoad
internalRolevalue"options*∂:"vspace*∂:É≠
Call
internalRolevalueÄ
	Attribute
ctxLoad
internalRoleargs9
Name
ctxLoad
internalRolevalue"res*∂+:"
EDT_VSPACE*∂+:j
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*∂:"GetLong*∂:ii*∂:gÑ*∂:Çª
Expr®
Call
internalRolevalue
	Attribute
internalRolefunc
ctxLoad=
Name
internalRolevalue
ctxLoad"options*∑:"save*∑:ii*∑:g*∑:π
Expr¶
Call
internalRolevalue}
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*∏:"Close*∏:ii*∏:g*∏::H»
Compare
internalRoletestü
Compare.comparators
promotedPropertyListtrueg
	Attribute
ctxLoad9
Name
internalRolevalue
ctxLoad"res*¥:"BTN_SAVE*¥::8
Name
ctxLoad
internalRoleleft"id*¥:@
Compare.ops
promotedPropertyListtrue
Eq"==*¥::*¥:G*¥	:FH
Return4
BoolLiteral
internalRolevalue"true*π:o*π	:`:3"Command*≥:24:;"XPAT_OptionsDialog*¢::ª&
ClassDef
internalRolebodyÂ
ClassDef.bases
promotedPropertyListtrue±
	Attribute
ctxLoadÉ
	Attribute
ctxLoad
internalRolevalueæ
Name
ctxLoad
internalRolevalue~
PreviousNoops

end_lineno186
internalRolenoops_previous/
NoopLine
internalRolelines"
*∫:ä*∫:å"c4dtools*ª&:"plugins*ª&:"Command*ª&::<Ö#
ClassDef.body
promotedPropertyListtrue£
Exprí
StringLiteral
internalRolevalue"b
    This Cinema 4D CommandData plugin opens the XPAT options dialog
    when being executed.
    *ø:y*ø:œ
FunctionDef
returns<nil>é
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg
internalRoleargs

annotation<nil>~
PreviousNoops

end_lineno192
internalRolenoops_previous/
NoopLine
internalRolelines"
*¿:ä*¿:å"self*¡:67*¡:6Ü
FunctionDef.body
promotedPropertyListtrue˚
ExprË
Call
internalRolevalueæ
	Attribute
ctxLoad
internalRolefunc˜
Call
internalRolevalueT
Name
ctxLoad
internalRoleargs"XPAT_Command_OpenOptionsDialog*¬:j:
Name
ctxLoad
internalRoleargs"self*¬/:j<
Name
ctxLoad
internalRolefunc"super*¬	:ii*¬	:g"__init__*¬	:ii*¬	:g*¬	:“
AssignÉ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*√	:"_dialog*√	:É7
NoneLiteral
internalRolevalue"<nil>*√:uÑ*√	:Ç:3"__init__*¡:24ö	
FunctionDef
returns<nil>é
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg

annotation<nil>
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno196/
NoopLine
internalRolelines"
*ƒ:ä*ƒ:å"self*∆:67*≈:6Ó
FunctionDef.body
promotedPropertyListtrue£
Ifº
If.body
promotedPropertyListtrueè
AssignÉ
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*»:"_dialog*»:Ét
Call
internalRolevalueI
Name
ctxLoad
internalRolefunc"XPAT_OptionsDialog*»:ii*»:gÑ*»:Ç:H”
UnaryOp
internalRoletest$
Not
internalRoleop"!*«:'Ä
	Attribute
ctxLoad
internalRoleoperand:
Name
ctxLoad
internalRolevalue"self*«:"_dialog*«:*«:G*«	:Fí
Return~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*…:"_dialog*…:*…	:`:3c
FunctionDef.decorator_list
promotedPropertyListtrue'
Name
ctxLoad"property*≈:"dialog*≈:24™
Assign≈
Name
ctxStore
internalRoletargets˛
PreviousNoops

end_lineno204
internalRolenoops_previous/
NoopLine
internalRolelines"
* :äM
NoopLine
internalRolelines"    # c4dtools.plugins.Command
*À:ä/
NoopLine
internalRolelines"
*Ã:ä* :å"	PLUGIN_ID*Õ:ÉM

NumLiteral
NumTypeint
internalRolevalue"1.029621e+06*Õ:vÑ*Õ:Ç‚
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_NAME*Œ:ÉÑ
Call
internalRolevalueÿ
	Attribute
internalRolefunc
ctxLoad|
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"res*Œ:"string*Œ:"XPAT_COMMAND_OPENOPTIONSDIALOG*Œ:ii*Œ:gÑ*Œ:ÇÁ
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_HELP*œ:Éâ
Call
internalRolevalue›
	Attribute
ctxLoad
internalRolefunc|
	Attribute
internalRolevalue
ctxLoad9
Name
ctxLoad
internalRolevalue"res*œ:"string*œ:"#XPAT_COMMAND_OPENOPTIONSDIALOG_HELP*œ:ii*œ:gÑ*œ:Ç¡
FunctionDef
returns<nil>Ã
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>Ω
arg

annotation<nil>
internalRoleargs˘
PreviousNoops
internalRolenoops_previous

end_lineno210/
NoopLine
internalRolelines"
*–:äH
NoopLine
internalRolelines"    # c4d.gui.CommandData
*—:ä/
NoopLine
internalRolelines"
*“:ä*–:å"self*”:67@
arg

annotation<nil>
internalRoleargs"doc*”:67*”:6ª
FunctionDef.body
promotedPropertyListtrueÖ
Return
Call
internalRolevalueÑ
	Attribute
ctxLoad
internalRoleargs9
Name
ctxLoad
internalRolevalue"c4d*‘!:"DLG_TYPE_MODAL*‘!:jø
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*‘:"dialog*‘:"Open*‘:ii*‘:g*‘	:`:3"Execute*”:24:;"XPAT_Command_OpenOptionsDialog*ª::˛
ClassDef
internalRolebodyÂ
ClassDef.bases
promotedPropertyListtrue±
	Attribute
ctxLoadÉ
	Attribute
ctxLoad
internalRolevalueæ
Name
ctxLoad
internalRolevalue~
PreviousNoops
internalRolenoops_previous

end_lineno213/
NoopLine
internalRolelines"
*’:ä*’:å"c4dtools*÷$:"plugins*÷$:"Command*÷$::< 
ClassDef.body
promotedPropertyListtrue©
Assignƒ
Name
ctxStore
internalRoletargets~
PreviousNoops

end_lineno215
internalRolenoops_previous/
NoopLine
internalRolelines"
*◊:ä*◊:å"	PLUGIN_ID*ÿ:ÉM

NumLiteral
NumTypeint
internalRolevalue"1.029538e+06*ÿ:vÑ*ÿ:Ç‡
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_NAME*Ÿ:ÉÇ
Call
internalRolevalue÷
	Attribute
ctxLoad
internalRolefunc|
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"res*Ÿ:"string*Ÿ:"XPAT_COMMAND_ALIGNHORIZONTAL*Ÿ:ii*Ÿ:gÑ*Ÿ:ÇÀ
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_ICON*⁄:ÉÌ
Call
internalRolevalueE
StringLiteral
internalRoleargs"xpresso-align-h.png*⁄:yj{
	Attribute
ctxLoad
internalRolefunc9
Name
internalRolevalue
ctxLoad"res*⁄:"file*⁄:ii*⁄:gÑ*⁄:ÇÂ
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_HELP*€:Éá
Call
internalRolevalue€
	Attribute
internalRolefunc
ctxLoad|
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"res*€:"string*€:"!XPAT_COMMAND_ALIGNHORIZONTAL_HELP*€:ii*€:gÑ*€:Ç“
FunctionDef
returns<nil>–
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg
internalRoleargs

annotation<nil>~
PreviousNoops

end_lineno220
internalRolenoops_previous/
NoopLine
internalRolelines"
*‹:ä*‹:å"self*›:67@
arg

annotation<nil>
internalRoleargs"doc*›:67*›:6»
FunctionDef.body
promotedPropertyListtrue»
Exprµ
Call
internalRolevalue<
StringLiteral
internalRoleargs"
horizontal*ﬁ:yjÄ
	Attribute
internalRoleargs
ctxLoad=
Name
ctxLoad
internalRolevalue"options*ﬁ,:"hspace*ﬁ,:jK
Name
ctxLoad
internalRolefunc"align_nodes_shortcut*ﬁ	:ii*ﬁ	:g*ﬁ	:H
Return4
BoolLiteral
internalRolevalue"true*ﬂ:o*ﬂ	:`:3"Execute*›:24:;"XPAT_Command_AlignHorizontal*÷::ˆ
ClassDef
internalRolebodyÂ
ClassDef.bases
promotedPropertyListtrue±
	Attribute
ctxLoadÉ
	Attribute
ctxLoad
internalRolevalueæ
Name
ctxLoad
internalRolevalue~
PreviousNoops

end_lineno224
internalRolenoops_previous/
NoopLine
internalRolelines"
*‡:ä*‡:å"c4dtools*·":"plugins*·":"Command*·"::<ƒ
ClassDef.body
promotedPropertyListtrue©
Assignƒ
Name
ctxStore
internalRoletargets~
PreviousNoops

end_lineno226
internalRolenoops_previous/
NoopLine
internalRolelines"
*‚:ä*‚:å"	PLUGIN_ID*„:ÉM

NumLiteral
NumTypeint
internalRolevalue"1.029539e+06*„:vÑ*„:Çﬁ
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_NAME*‰:ÉÄ
Call
internalRolevalue‘
	Attribute
ctxLoad
internalRolefunc|
	Attribute
ctxLoad
internalRolevalue9
Name
ctxLoad
internalRolevalue"res*‰:"string*‰:"XPAT_COMMAND_ALIGNVERTICAL*‰:ii*‰:gÑ*‰:ÇÀ
AssignF
Name
ctxStore
internalRoletargets"PLUGIN_ICON*Â:ÉÌ
Call
internalRolevalueE
StringLiteral
internalRoleargs"xpresso-align-v.png*Â:yj{
	Attribute
ctxLoad
internalRolefunc9
Name
internalRolevalue
ctxLoad"res*Â:"file*Â:ii*Â:gÑ*Â:Ç„
AssignF
Name
internalRoletargets
ctxStore"PLUGIN_HELP*Ê:ÉÖ
Call
internalRolevalueŸ
	Attribute
internalRolefunc
ctxLoad|
	Attribute
internalRolevalue
ctxLoad9
Name
ctxLoad
internalRolevalue"res*Ê:"string*Ê:"XPAT_COMMAND_ALIGNVERTICAL_HELP*Ê:ii*Ê:gÑ*Ê:Ç–
FunctionDef
returns<nil>–
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¡
arg

annotation<nil>
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno231/
NoopLine
internalRolelines"
*Á:ä*Á:å"self*Ë:67@
arg
internalRoleargs

annotation<nil>"doc*Ë:67*Ë:6∆
FunctionDef.body
promotedPropertyListtrue∆
Expr≥
Call
internalRolevalue:
StringLiteral
internalRoleargs"vertical*È:yjÄ
	Attribute
ctxLoad
internalRoleargs=
Name
ctxLoad
internalRolevalue"options*È*:"vspace*È*:jK
Name
ctxLoad
internalRolefunc"align_nodes_shortcut*È	:ii*È	:g*È	:H
Return4
BoolLiteral
internalRolevalue"true*Í:o*Í	:`:3"Execute*Ë:24:;"XPAT_Command_AlignVertical*·::ﬁ
Assign
internalRolebody¬
Name
ctxStore
internalRoletargets~
PreviousNoops
internalRolenoops_previous

end_lineno235/
NoopLine
internalRolelines"
*Î:ä*Î:å"options*Ï:Én
Call
internalRolevalueC
Name
ctxLoad
internalRolefunc"XPAT_Options*Ï:ii*Ï:gÑ*Ï:Ç„
If
internalRolebodyØ
If.body
promotedPropertyListtrueÇ
ExprÔ
Call
internalRolevalue≈
	Attribute
internalRolefunc
ctxLoadÇ
	Attribute
ctxLoad
internalRolevalue>
Name
ctxLoad
internalRolevalue"c4dtools*Ô:"plugins*Ô:"main*Ô:ii*Ô:g*Ô::Hä
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
StringLiteral"__main__*Ó:y:æ
Name
ctxLoad
internalRoleleft~
PreviousNoops

end_lineno237
internalRolenoops_previous/
NoopLine
internalRolelines"
*Ì:ä*Ì:å"__name__*Ó:@
Compare.ops
promotedPropertyListtrue
Eq"==*Ó::*Ó:G*Ó:F±
RemainderNoops
internalRolenoops_remainder

end_lineno242/
NoopLine
internalRolelines"
*:ä/
NoopLine
internalRolelines"
*Ò:ä*:å*:$