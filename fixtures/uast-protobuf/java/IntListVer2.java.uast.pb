
CompilationUnit’∫
TypeDeclaration
	interfacefalse
internalRoletypesà
Javadoc
internalRolejavadoc‹

TagElement
internalRoletagse
TextElement5
text-A class to provide a simple list of integers.
internalRole	fragments*g
TextElement
internalRole	fragments7
text/List resizes automatically. Used to illustrate *:e
TextElement5
text-various design and implementation details of 
internalRole	fragments*nI
TextElement
internalRole	fragments
texta class in Java.*†k
TextElement
internalRole	fragments:
text2Version 1 only contains the instance variables and*∫I
TextElement
internalRole	fragments
textthe constructors*Ò

TagElement
internalRoletags
tagName@author@
TextElement
text scottm
internalRole	fragments*ç	*Ü	:ãä4
Modifier
internalRole	modifiers"public*ü9

SimpleName
internalRolename"IntListVer2*¨:ƒ
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*Ê4
Modifier
internalRole	modifiers"static*Ó3
Modifier
internalRole	modifiers"final*ı1
PrimitiveType
internalRoletype"int*˚∏
VariableDeclarationFragment
internalRole	fragments9

SimpleName
internalRolename"DEFAULT_CAP*ˇ:C
NumberLiteral
internalRoleinitializer
token10*ç:v„
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*äÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*í'
	Dimension
internalRole
dimensionso
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"iValues*ò:ç
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*¶1
PrimitiveType
internalRoletype"int*Æm
VariableDeclarationFragment
internalRole	fragments3

SimpleName
internalRolename"iSize*≤:È
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations
Javadoc
internalRolejavadocÎ

TagElement
internalRoletagsn
TextElement=
text5Default add method. Add x to the end of this IntList.
internalRole	fragments*–W
TextElement&
textSize of the list goes up by 1.
internalRole	fragments*é◊

TagElement
internalRoletags
tagName@param4

SimpleName
internalRole	fragments"x*º:c
TextElement
internalRole	fragments2
text* The value to add to the end of this list.*Ω*µ:ãä4
Modifier
internalRole	modifiers"public*ˆ9
PrimitiveType
internalRolereturnType2"void*˝2

SimpleName
internalRolename"add*Ç:4∏
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*Ü0

SimpleName
internalRolename"x*ä:7*Ü:6Ω
Block
internalRolebodyÖ
IfStatement
internalRole
statements¨
InfixExpression
internalRole
expression
operator==;

SimpleName
internalRoleleftOperand"iSize*‰:£
QualifiedName
internalRolerightOperand:

SimpleName
internalRole	qualifier"iValues*Ì:4

SimpleName
internalRolename"length*ı::*‰:G¢
ExpressionStatement
internalRolethenStatementh
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"resize*ä:i:g:H"if:F˝
AssertStatement
internalRole
statements…
InfixExpression
internalRole
expression
operator&&Õ
InfixExpression
internalRoleleftOperand
operator<=C
NumberLiteral
internalRoleleftOperand

token0*§ :v<

SimpleName
internalRolerightOperand"iSize*© :*§ :≠
InfixExpression
internalRolerightOperand
operator<;

SimpleName
internalRoleleftOperand"iSize*≤ :£
QualifiedName
internalRolerightOperand:

SimpleName
internalRole	qualifier"iValues*∫ :4

SimpleName
internalRolename"length*¬ ::*≤ :*§ :%:f’
ExpressionStatement
internalRole
statementsû

Assignment
operator=
internalRole
expressionù
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*”!:4

SimpleName
internalRoleindex"iSize*€!::É:

SimpleName
internalRolerightHandSide"x*‰!:Ñ*”!:Ç:∏
ExpressionStatement
internalRole
statementsÅ
PostfixExpression
internalRole
expression
operator++6

SimpleName
internalRoleoperand"iSize*":*":::3_^*ƒ:E2¡
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*∆&9
PrimitiveType
internalRolereturnType2"void*Œ&5

SimpleName
internalRolename"resize*”&:4ø
Block
internalRolebodyú
VariableDeclarationStatement
internalRole
statementsÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*Á''
	Dimension
internalRole
dimensionsÿ
VariableDeclarationFragment
internalRole	fragments2

SimpleName
internalRolename"temp*Ì':È
ArrayCreation
internalRoleinitializerÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*¯''
	Dimension
internalRole
dimensions≥
InfixExpression
internalRole
dimensions
operator*¢
QualifiedName
internalRoleleftOperand:

SimpleName
internalRole	qualifier"iValues*¸':4

SimpleName
internalRolename"length*Ñ	'::D
NumberLiteral
internalRolerightOperand

token2*ç	':v*¸':+ˇ
ExpressionStatement
internalRole
statements»
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"System*ö	(:h8

SimpleName
internalRolename"	arraycopy*°	(:i;

SimpleName
internalRole	arguments"iValues*´	(:jA
NumberLiteral
internalRole	arguments

token0*¥	(:vj8

SimpleName
internalRole	arguments"temp*∑	(:jA
NumberLiteral
internalRole	arguments

token0*Ω	(:vj†
QualifiedName
internalRole	arguments:

SimpleName
internalRole	qualifier"iValues*¿	(:4

SimpleName
internalRolename"length*»	(::j:g:˘
ExpressionStatement
internalRole
statements¬

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"iValues*⁄	):É=

SimpleName
internalRolerightHandSide"temp*‰	):Ñ*⁄	):Ç::3_^*∆&:?2Ù
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÑ
Javadoc
internalRolejavadocŸ

TagElement
internalRoletagsh
TextElement7
text/Return a String version of this list. Size and 
internalRole	fragments*à
-K
TextElement
internalRole	fragments
textelements included.*¿
.:ãä4
Modifier
internalRole	modifiers"public*·
0_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*Ë
0:7

SimpleName
internalRolename"toString*Ô
0:4ƒ
Block
internalRolebody†
VariableDeclarationStatement
internalRole
statementsX

SimpleType
internalRoletype4

SimpleName
internalRolename"String*Ô3:â
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*ˆ3:ò
InfixExpression
operator+
internalRoleinitializerA
StringLiteral
internalRoleleftOperand""size: "*ˇ3:y<

SimpleName
internalRolerightOperand"iSize*ä3:L
StringLiteral 
internalRoleextendedOperands"", elements: ["*í3:y*ˇ3:)é

ForStatement
internalRole
statements£
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*∞4≠
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*¥4:B
NumberLiteral
internalRoleinitializer

token0*∏4:v:P“
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*ª4:Œ
InfixExpression
internalRolerightOperand
operator-;

SimpleName
internalRoleleftOperand"iSize*ø4:D
NumberLiteral
internalRolerightOperand

token1*«4:v*ø4:**ª4:Q|
PostfixExpression
operator++
internalRoleupdaters2

SimpleName
internalRoleoperand"i* 4:* 4:R‰
ExpressionStatement
internalRolebody≤

Assignment
internalRole
expression
operator+=>

SimpleName
internalRoleleftHandSide"result*‹5:Éß
InfixExpression
internalRolerightHandSide
operator+ó
ArrayAccess
internalRoleleftOperand6

SimpleName
internalRolearray"iValues*Ê5:0

SimpleName
internalRoleindex"i*Ó5::>
StringLiteral
internalRolerightOperand"", "*Û5:y*Ê5:)Ñ*‹5:ÇÜÖ):S:O˘
IfStatement
internalRole
statementsÀ
InfixExpression
internalRole
expression
operator>;

SimpleName
internalRoleleftOperand"iSize*Ö6:D
NumberLiteral
internalRolerightOperand

token0*ç6:v*Ö6:G˜
ExpressionStatement
internalRolethenStatementº

Assignment
internalRole
expression
operator+=>

SimpleName
internalRoleleftHandSide"result*û7:É±
ArrayAccess
internalRolerightHandSide6

SimpleName
internalRolearray"iValues*®7:∆
InfixExpression
internalRoleindex
operator-;

SimpleName
internalRoleleftOperand"iSize*∞7:D
NumberLiteral

token1
internalRolerightOperand*∏7:v*∞7:*:Ñ*û7:ÇÜÖ):H"if:FÄ
ExpressionStatement
internalRole
statements…

Assignment
internalRole
expression
operator+=>

SimpleName
internalRoleleftHandSide"result*≈8:É?
StringLiteral
internalRolerightHandSide""]"*œ8:yÑ*≈8:ÇÜÖ):m
ReturnStatement
internalRole
statements:

SimpleName
internalRole
expression"result*‰9::`:3_^*¸	,:E2—"
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*ﬂ>_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*Ê>:H

SimpleName
internalRolename"toStringUsingStringBuffer*Ì>:4ó 
Block
internalRolebody¢
VariableDeclarationStatement
internalRole
statements^

SimpleType
internalRoletype:

SimpleName
internalRolename"StringBuffer*ì?:Ö
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*†?:î
ClassInstanceCreation
internalRoleinitializer^

SimpleType
internalRoletype:

SimpleName
internalRolename"StringBuffer*≠?:ù
ExpressionStatement
internalRole
statementsÊ
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*∆@:h5

SimpleName
internalRolename"append*Õ@:i?
StringLiteral
internalRole	arguments""size: "*’@:yj:g:ó
ExpressionStatement
internalRole
statements‡
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ÍA:h5

SimpleName
internalRolename"append*ÒA:i9

SimpleName
internalRole	arguments"iSize*˘A:j:g:§
ExpressionStatement
internalRole
statementsÌ
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ãB:h5

SimpleName
internalRolename"append*íB:iF
StringLiteral
internalRole	arguments"", elements: ["*ôB:yj:g:ﬂ
ForStatement
internalRole
statements£
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*∏C≠
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*ºC:B
NumberLiteral
internalRoleinitializer

token0*¿C:v:P“
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*√C:Œ
InfixExpression
operator-
internalRolerightOperand;

SimpleName
internalRoleleftOperand"iSize*«C:D
NumberLiteral
internalRolerightOperand

token1*œC:v*«C:**√C:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*“C:*“C:Rµ
Block
internalRolebodyÙ
ExpressionStatement
internalRole
statementsΩ
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ÂD:h5

SimpleName
internalRolename"append*ÏD:iï
ArrayAccess
internalRole	arguments6

SimpleName
internalRolearray"iValues*ÛD:0

SimpleName
internalRoleindex"i*˚D::j:g:ô
ExpressionStatement
internalRole
statements‚
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*çE:h5

SimpleName
internalRolename"append*îE:i;
StringLiteral
internalRole	arguments"", "*õE:yj:g::S_^:Oë
IfStatement
internalRole
statementsÀ
InfixExpression
internalRole
expression
operator>;

SimpleName
internalRoleleftOperand"iSize*∫G:D
NumberLiteral

token0
internalRolerightOperand*¬G:v*∫G:Gè
ExpressionStatement
internalRolethenStatement‘
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*”H:h5

SimpleName
internalRolename"append*⁄H:i¨
ArrayAccess
internalRole	arguments6

SimpleName
internalRolearray"iValues*·H:∆
InfixExpression
internalRoleindex
operator-;

SimpleName
internalRoleleftOperand"iSize*ÈH:D
NumberLiteral
internalRolerightOperand

token1*ÒH:v*ÈH:*:j:g:H"if:Fò
ExpressionStatement
internalRole
statements·
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ˇI:h5

SimpleName
internalRolename"append*ÜI:i:
StringLiteral
internalRole	arguments""]"*çI:yj:g:€
ReturnStatement
internalRole
statementsß
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*£J:h7

SimpleName
internalRolename"toString*™J:i:g:`:3_^*ﬂ>:E2ó
MethodDeclaration
constructortrue 
internalRolebodyDeclarations≥
Javadoc
internalRolejavadocà

TagElement
internalRoletagsd
TextElement
internalRole	fragments3
text+Default constructor. Creates an empty list.*–N:ãä4
Modifier
internalRole	modifiers"public*äP:

SimpleName
internalRolename"IntListVer2*ëP:4ó
Block
internalRolebodys
ConstructorInvocation
internalRole
statements>

SimpleName
internalRole	arguments"DEFAULT_CAP*‹R::3_^*ƒM:E2∂
MethodDeclaration
constructortrue 
internalRolebodyDeclarations…
Javadoc
internalRolejavadoc·

TagElement
internalRoletagsg
TextElement
internalRole	fragments6
text.Constructor to allow user of class to specify *ÆWj
TextElement
internalRole	fragments9
text1initial capacity in case they intend to add a lot*ÂXh
TextElement
internalRole	fragments7
text/of elements to new list. Creates an empty list.*üY∫

TagElement
internalRoletags
tagName@param=

SimpleName
internalRole	fragments"
initialCap*ﬁZ:=
TextElement
internalRole	fragments
text > 0*ËZ*◊Z:ãä4
Modifier
internalRole	modifiers"public*ˇ\:

SimpleName
internalRolename"IntListVer2*Ü\:4¡
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*í\9

SimpleName
internalRolename"
initialCap*ñ\:7*í\:6‹

Block
internalRolebody˚
AssertStatement
internalRole
statementsœ
InfixExpression
internalRole
expression
operator>@

SimpleName
internalRoleleftOperand"
initialCap*¥]:D
NumberLiteral
internalRolerightOperand

token0*¡]:v*¥]:ı
InfixExpression
internalRolemessage
operator+r
StringLiteral
internalRoleleftOperand"9"Violation of precondition. IntListVer1(int initialCap):"*≈]:yt
StringLiteral
internalRolerightOperand":"initialCap must be greater than 0. Value of initialCap: "*é^:yD

SimpleName 
internalRoleextendedOperands"
initialCap*À^:*≈]:):f∂
ExpressionStatement
internalRole
statementsˇ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"iValues*‡_:É˘
ArrayCreation
internalRolerightHandSideÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*Ó_'
	Dimension
internalRole
dimensions>

SimpleName
internalRole
dimensions"
initialCap*Ú_::Ñ*‡_:Ç:Ä
ExpressionStatement
internalRole
statements…

Assignment
internalRole
expression
operator==

SimpleName
internalRoleleftHandSide"iSize*à`:ÉF
NumberLiteral
internalRolerightHandSide

token0*ê`:vÑ*à`:Ç::3_^*¢V:E2á1
MethodDeclaration 
internalRolebodyDeclarations
constructorfalseœ
Javadoc
internalRolejavadoc”

TagElement
internalRoletagsk
TextElement
internalRole	fragments:
text2Return true if this IntList is equal to other.<br>*ØdB
TextElement
text	pre: none
internalRole	fragments*Èeœ

TagElement
tagName@param
internalRoletags8

SimpleName
internalRole	fragments"other*Åf:W
TextElement
internalRole	fragments&
text The object to comapre to this*Üf*˙f¸

TagElement
internalRoletags
tagName@returne
TextElement
internalRole	fragments4
text, true if other is a non null, IntList object*≥gj
TextElement
internalRole	fragments9
text1that is the same size as this IntList and has the*Áhj
TextElement
internalRole	fragments9
text1same elements in the same order, false otherwise.*†i*¨g:ãä4
Modifier
internalRole	modifiers"public*ﬂk<
PrimitiveType
internalRolereturnType2"boolean*Êk5

SimpleName
internalRolename"equals*Ók:4„
SingleVariableDeclaration
internalRole
parameters
varargsfalseX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*ık:4

SimpleName
internalRolename"other*¸k:7*ık:6À&
Block
internalRolebody·
VariableDeclarationStatement
internalRole
statements5
PrimitiveType
internalRoletype"boolean*çln
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*ïl:“#
IfStatement
internalRole
statementsΩ
InfixExpression
internalRole
expression
operator==;

SimpleName
internalRoleleftOperand"other*©m:5
NullLiteral
internalRolerightOperand"null:u*©m:Gë
ExpressionStatement
internalRolethenStatement÷

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"result*Äo:ÉR
BooleanLiteral
booleanValuefalse
internalRolerightHandSide*âo:oÑ*Äo:Ç:H 
IfStatement
internalRoleelseStatementº
InfixExpression
operator==
internalRole
expression<

SimpleName
internalRolerightOperand"other*©p:3
ThisExpression
internalRoleleftOperand:â*°p:Gê
ExpressionStatement
internalRolethenStatement’

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"result*àr:ÉQ
BooleanLiteral
booleanValuetrue
internalRolerightHandSide*ër:oÑ*àr:Ç:H¿
IfStatement
internalRoleelseStatementò
InfixExpression
internalRole
expression
operator!=†
MethodInvocation
internalRoleleftOperand7

SimpleName
internalRolename"getClass*Æs:i2
ThisExpression
internalRole
expression:hâ:g©
MethodInvocation
internalRolerightOperand:

SimpleName
internalRole
expression"other*ºs:h7

SimpleName
internalRolename"getClass*¬s:i:g*©s:Gë
ExpressionStatement
internalRolethenStatement÷

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"result*òu:ÉR
BooleanLiteral
booleanValuefalse
internalRolerightHandSide*°u:oÑ*òu:Ç:HŸ
Block
internalRoleelseStatement⁄
VariableDeclarationStatement
internalRole
statements]

SimpleType
internalRoletype9

SimpleName
internalRolename"IntListVer2*Äx:æ
VariableDeclarationFragment
internalRole	fragments:

SimpleName
internalRolename"otherIntList*åx:«
CastExpression
internalRoleinitializer]

SimpleType
internalRoletype9

SimpleName
internalRolename"IntListVer2*úx:9

SimpleName
internalRole
expression"other*®x:À
ExpressionStatement
internalRole
statementsî

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"result*ºy:Éè
InfixExpression
operator==
internalRolerightHandSideï
FieldAccess
internalRoleleftOperand3

SimpleName
internalRolename"iSize* y:1
ThisExpression
internalRole
expression:â:ß
QualifiedName
internalRolerightOperand?

SimpleName
internalRole	qualifier"otherIntList*”y:3

SimpleName
internalRolename"iSize*‡y::*≈y:Ñ*ºy:Ç:ù
VariableDeclarationStatement
internalRole
statements1
PrimitiveType
internalRoletype"int*Ùz≠
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*¯z:B
NumberLiteral
internalRoleinitializer

token0*¸z:v‡

WhileStatement
internalRole
statementsÃ
InfixExpression
internalRole
expression
operator&&¿
InfixExpression
operator<
internalRoleleftOperand7

SimpleName
internalRoleleftOperand"i*í {:<

SimpleName
internalRolerightOperand"iSize*ñ {:*í {:=

SimpleName
internalRolerightOperand"result*ü {:*í {:V%ﬁ
Block
internalRolebodyÉ
ExpressionStatement
internalRole
statementsÃ

Assignment
operator=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*π |:É«
InfixExpression
internalRolerightHandSide
operator==
ArrayAccess
internalRoleleftOperandé
FieldAccess
internalRolearray5

SimpleName
internalRolename"iValues*« |:1
ThisExpression
internalRole
expression:â0

SimpleName
internalRoleindex"i*œ |::Ñ
ArrayAccess
internalRolerightOperand°
QualifiedName
internalRolearray?

SimpleName
internalRole	qualifier"otherIntList*’ |:5

SimpleName
internalRolename"iValues*‚ |::0

SimpleName
internalRoleindex"i*Í |::*¬ |:Ñ*π |:Ç:≥
ExpressionStatement
internalRole
statements}
PostfixExpression
internalRole
expression
operator++2

SimpleName
internalRoleoperand"i*ˇ }:*ˇ }:::W_^:U:I_^"if:IF"if:IF"if:Fn
ReturnStatement
internalRole
statements;

SimpleName
internalRole
expression"result*Æ!Ä::`:3_^*§c:E2*:E::$