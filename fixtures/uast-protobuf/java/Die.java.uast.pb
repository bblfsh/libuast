
CompilationUnit”
ImportDeclaration
internalRoleimports
onDemandfalse
staticfalse˘
QualifiedName
internalRolenameò
QualifiedName
internalRole	qualifier6

SimpleName
internalRole	qualifier"java*:1

SimpleName
internalRolename"util*::3

SimpleName
internalRolename"Random*::0*:/õí
TypeDeclaration
	interfacefalse
internalRoletypes≤
Javadoc
internalRolejavadoc¯

TagElement
internalRoletagsh
TextElement
internalRole	fragments8
text0Models a playing die with sides numbered 1 to N.*!j
TextElement
internalRole	fragments:
text2All sides have uniform probablity of being rolled.*Uå

TagElement
tagName@author
internalRoletagsM
TextElement
internalRole	fragments
text Summer CS 307 class*ï*é:ãä4
Modifier
internalRole	modifiers"public*Æ	1

SimpleName
internalRolename"Die*ª	:ƒ
FieldDeclaration 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*√
4
Modifier
internalRole	modifiers"static* 
3
Modifier
internalRole	modifiers"final*—
1
PrimitiveType
internalRoletype"int*◊
π
VariableDeclarationFragment
internalRole	fragments;

SimpleName
internalRolename"DEFAULT_SIDES*€
:B
NumberLiteral
internalRoleinitializer

token6*Î
:vÑ
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*Û4
Modifier
internalRole	modifiers"static*˚X

SimpleType
internalRoletype4

SimpleName
internalRolename"Random*Ç:Ü
VariableDeclarationFragment
internalRole	fragments;

SimpleName
internalRolename"ourRandNumGen*â:é
ClassInstanceCreation
internalRoleinitializerX

SimpleType
internalRoletype4

SimpleName
internalRolename"Random*ù:»
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*¨3
Modifier
internalRole	modifiers"final*¥1
PrimitiveType
internalRoletype"int*∫s
VariableDeclarationFragment
internalRole	fragments9

SimpleName
internalRolename"iMyNumSides*æ:ë
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*œ1
PrimitiveType
internalRoletype"int*◊q
VariableDeclarationFragment
internalRole	fragments7

SimpleName
internalRolename"	iMyResult*€:¥
MethodDeclaration
constructortrue 
internalRolebodyDeclarations÷
Javadoc
internalRolejavadoc´

TagElement
internalRoletagsP
TextElement
internalRole	fragments
textDefault constructor.<p>*˜F
TextElement
internalRole	fragments
textpre: none<br>*ñm
TextElement
internalRole	fragments<
text4post: getNumSides() = DEFAULT_SIDES, getResult() = 1*´:ãä4
Modifier
internalRole	modifiers"public*Ï2

SimpleName
internalRolename"Die*Û:4ô
Block
internalRolebodyu
ConstructorInvocation
internalRole
statements@

SimpleName
internalRole	arguments"DEFAULT_SIDES*Ü::3_^*Ï:E2È
MethodDeclaration
constructortrue 
internalRolebodyDeclarations„
Javadoc
internalRolejavadoc∏

TagElement
internalRoletags\
TextElement+
text#Create a Die with numSides sides<p>
internalRole	fragments*≠N
TextElement
textpre: numSides > 1<br>
internalRole	fragments*ÿl
TextElement
internalRole	fragments;
text3post: getNumSides() = numSides, getResult() = 1<br>*ıx
TextElement
internalRole	fragmentsG
text?An exception will be generated if the preconditions are not met*∞ :ãä4
Modifier
internalRole	modifiers"public*¸"2

SimpleName
internalRolename"Die*É":4ø
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*á"7

SimpleName
internalRolename"numSides*ã":7*á":6ˇ
Block
internalRolebodyÕ
AssertStatement
internalRole
statementsÕ
InfixExpression
internalRole
expression
operator>>

SimpleName
internalRoleleftOperand"numSides*§#:D
NumberLiteral
internalRolerightOperand

token1*Ø#:v*§#:…
InfixExpression
internalRolemessage
operator+a
StringLiteral
internalRoleleftOperand"("Violation of precondition: numSides = "*≥#:y?

SimpleName
internalRolerightOperand"numSides*ﬁ#:^
StringLiteral 
internalRoleextendedOperands"!"numSides must be greater than 1"*È#:y*≥#:):fÅ
ExpressionStatement
internalRole
statements 

Assignment
internalRole
expression
operator=C

SimpleName
internalRoleleftHandSide"iMyNumSides*ï%:ÉA

SimpleName
internalRolerightHandSide"numSides*£%:Ñ*ï%:Ç:Ñ
ExpressionStatement
internalRole
statementsÕ

Assignment
internalRole
expression
operator=A

SimpleName
internalRoleleftHandSide"	iMyResult*µ&:ÉF
NumberLiteral
internalRolerightHandSide

token1*¡&:vÑ*µ&:Ç:ˇ
AssertStatement
internalRole
statementsÀ
InfixExpression
internalRole
expression
operator&&ˇ
InfixExpression
operator==
internalRoleleftOperandm
MethodInvocation
internalRoleleftOperand8

SimpleName
internalRolename"	getResult*”':i:gD
NumberLiteral
internalRolerightOperand

token1*‚':v*”':˝
InfixExpression
internalRolerightOperand
operator==o
MethodInvocation
internalRoleleftOperand:

SimpleName
internalRolename"getNumSides*Á':i:g?

SimpleName
internalRolerightOperand"numSides*¯':*Á':*”':%:f:3_^*¢:E2ô
MethodDeclaration
constructortrue 
internalRolebodyDeclarationsú
Javadoc
internalRolejavadocÒ

TagElement
internalRoletags|
TextElement
internalRole	fragmentsK
textCCreate a Die with numSides and top side and result set to result<p>*ô,g
TextElement6
text.pre: numSides > 1, 1 <= result <= numSides<br>
internalRole	fragments*‰-l
TextElement
internalRole	fragments;
text3post: getNumSides() = numSides, getResult() = 1<br>*ö	.x
TextElement
internalRole	fragmentsG
text?An exception will be generated if the preconditions are not met*’	/:ãä4
Modifier
internalRole	modifiers"public*°
12

SimpleName
internalRolename"Die*®
1:4ø
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*¨
17

SimpleName
internalRolename"numSides*∞
1:7*¨
1:6Ω
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*∫
15

SimpleName
internalRolename"result*æ
1:7*∫
1:6∂
Block
internalRolebodyç
AssertStatement
internalRole
statementsà
InfixExpression
internalRole
expression
operator&&Ô
InfixExpression
internalRoleleftOperand
operator&&œ
InfixExpression
internalRoleleftOperand
operator>>

SimpleName
internalRoleleftOperand"numSides*’
2:D
NumberLiteral
internalRolerightOperand

token1*‡
2:v*’
2:œ
InfixExpression
internalRolerightOperand
operator<=C
NumberLiteral
internalRoleleftOperand

token1*Â
2:v=

SimpleName
internalRolerightOperand"result*Í
2:*Â
2:*’
2:% 
InfixExpression
operator<=
internalRolerightOperand<

SimpleName
internalRoleleftOperand"result*Ù
2:?

SimpleName
internalRolerightOperand"numSides*˛
2:*Ù
2:*’
2:%O
StringLiteral
internalRolemessage""Violation of precondition"*â2:y:fÅ
ExpressionStatement
internalRole
statements 

Assignment
internalRole
expression
operator=C

SimpleName
internalRoleleftHandSide"iMyNumSides*Ø4:ÉA

SimpleName
internalRolerightHandSide"numSides*Ω4:Ñ*Ø4:Ç:˝
ExpressionStatement
internalRole
statements∆

Assignment
operator=
internalRole
expressionA

SimpleName
internalRoleleftHandSide"	iMyResult*œ5:É?

SimpleName
internalRolerightHandSide"result*€5:Ñ*œ5:Ç::3_^*é+:E2ù
MethodDeclaration 
internalRolebodyDeclarations
constructorfalseõ
Javadoc
internalRolejavadoc–

TagElement
internalRoletagsÅ
TextElement
internalRole	fragmentsP
textHroll this Die. Every side has an equal chance of being the new result<p>*˙:F
TextElement
textpre: none<br>
internalRole	fragments* ;`
TextElement
internalRole	fragments/
text'post: 1 <= getResult() <= getNumSides()*ﬂ<ù

TagElement
internalRoletags
tagName@return^
TextElement-
text% the result of the Die after the roll
internalRole	fragments*ï=*é=:ãä4
Modifier
internalRole	modifiers"public*«?8
PrimitiveType
internalRolereturnType2"int*Œ?3

SimpleName
internalRolename"roll*“?:4Å
Block
internalRolebody≈
ExpressionStatement
internalRole
statementsé

Assignment
internalRole
expression
operator=A

SimpleName
internalRoleleftHandSide"	iMyResult*·@:ÉÜ
InfixExpression
internalRolerightHandSide
operator+
MethodInvocation
internalRoleleftOperandB

SimpleName
internalRole
expression"ourRandNumGen*Ì@:h6

SimpleName
internalRolename"nextInt*˚@:i?

SimpleName
internalRole	arguments"iMyNumSides*É@:j:gD
NumberLiteral
internalRolerightOperand

token1*í@:v*Ì@:)Ñ*·@:Ç:¢
AssertStatement
internalRole
statementsÓ
InfixExpression
internalRole
expression
operator&&π
ParenthesizedExpression
internalRoleleftOperand˝
InfixExpression
internalRole
expression
operator<=C
NumberLiteral
internalRoleleftOperand

token1*ßB:vn
MethodInvocation
internalRolerightOperand8

SimpleName
internalRolename"	getResult*¨B:i:g*ßB::Ê
ParenthesizedExpression
internalRolerightOperand©
InfixExpression
operator<=
internalRole
expressionm
MethodInvocation
internalRoleleftOperand8

SimpleName
internalRolename"	getResult*øB:i:gp
MethodInvocation
internalRolerightOperand:

SimpleName
internalRolename"getNumSides*ŒB:i:g*øB::*•B:%:fp
ReturnStatement
internalRole
statements=

SimpleName
internalRole
expression"	iMyResult*ÔD::`:3_^*Ô9:E2ë
MethodDeclaration 
internalRolebodyDeclarations
constructorfalseÛ
Javadoc
internalRolejavadoc≠

TagElement
internalRoletags^
TextElement
internalRole	fragments-
text%return how many sides this Die has<p>*ëIF
TextElement
textpre: none<br>
internalRole	fragments*æJa
TextElement
internalRole	fragments0
text(post: return how many sides this Die has*”Kò

TagElement
internalRoletags
tagName@returnY
TextElement
internalRole	fragments(
text  the number of sides on this Die*äL*ÉL:ãä4
Modifier
internalRole	modifiers"public*∑N8
PrimitiveType
internalRolereturnType2"int*æN:

SimpleName
internalRolename"getNumSides*¬N:4ñ
Block
internalRolebodyr
ReturnStatement
internalRole
statements?

SimpleName
internalRole
expression"iMyNumSides*ﬂO::`:3_^*ÜH:E2ú
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÇ
Javadoc
internalRolejavadocΩ

TagElement
internalRoletagsl
TextElement
internalRole	fragments;
text3get the current result or top number of this Die<p>*ˇSF
TextElement
internalRole	fragments
textpre: none<br>*∫Tc
TextElement
internalRole	fragments2
text*post: return the number on top of this Die*œUó

TagElement
internalRoletags
tagName@returnX
TextElement
internalRole	fragments'
text the current result of this Die*àV*ÅV:ãä4
Modifier
internalRole	modifiers"public*¥X8
PrimitiveType
internalRolereturnType2"int*ªX8

SimpleName
internalRolename"	getResult*øX:4î
Block
internalRolebodyp
ReturnStatement
internalRole
statements=

SimpleName
internalRole
expression"	iMyResult*⁄Y::`:3_^*ÙR:E2‰&
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations˚
Javadoc
internalRolejavadoc°

TagElement
internalRoletagsy
TextElement
internalRole	fragmentsH
text@returns true if this Die and the parameter otherObj are equal<p>*˙]F
TextElement
textpre: none<br>
internalRole	fragments*¬^π
TextElementá
textpost: return true if the parameter is a Die object with the same number of sides as this Die and currently has the same result.
internalRole	fragments*◊_¨

TagElement
tagName@return
internalRoletagsm
TextElement
internalRole	fragments<
text4 true if the the two Dice are equal, false otherwise*Â`*ﬁ`:ãä4
Modifier
internalRole	modifiers"public*¶b<
PrimitiveType
internalRolereturnType2"boolean*≠b5

SimpleName
internalRolename"equals*µb:4Ê
SingleVariableDeclaration
internalRole
parameters
varargsfalseX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*ºb:7

SimpleName
internalRolename"otherObj*√b:7*ºb:6˘
Block
internalRolebody±
VariableDeclarationStatement
internalRole
statements5
PrimitiveType
internalRoletype"boolean*’cΩ
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*›c:M
BooleanLiteral
booleanValuetrue
internalRoleinitializer*Êc:o±
IfStatement
internalRole
statements¿
InfixExpression
internalRole
expression
operator==>

SimpleName
internalRoleleftOperand"otherObj*˜d:5
NullLiteral
internalRolerightOperand"null:u*˜d:Gë
ExpressionStatement
internalRolethenStatement÷

Assignment
operator=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*ïe:ÉR
BooleanLiteral
internalRolerightHandSide
booleanValuefalse*ûe:oÑ*ïe:Ç:H¶
IfStatement
internalRoleelseStatementø
InfixExpression
internalRole
expression
operator==?

SimpleName
internalRolerightOperand"otherObj*Ωf:3
ThisExpression
internalRoleleftOperand:â*µf:Gê
ExpressionStatement
internalRolethenStatement’

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"result*”g:ÉQ
BooleanLiteral
booleanValuetrue
internalRolerightHandSide*‹g:oÑ*”g:Ç:Hô
IfStatement
internalRoleelseStatementõ
InfixExpression
internalRole
expression
operator!=†
MethodInvocation
internalRoleleftOperand7

SimpleName
internalRolename"getClass*˜h:i2
ThisExpression
internalRole
expression:hâ:g¨
MethodInvocation
internalRolerightOperand=

SimpleName
internalRole
expression"otherObj*Öh:h7

SimpleName
internalRolename"getClass*éh:i:g*Úh:Gë
ExpressionStatement
internalRolethenStatement÷

Assignment
operator=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*¶i:ÉR
BooleanLiteral
booleanValuefalse
internalRolerightHandSide*Øi:oÑ*¶i:Ç:HØ
Block
internalRoleelseStatement…
VariableDeclarationStatement
internalRole
statementsU

SimpleType
internalRoletype1

SimpleName
internalRolename"Die*œk:µ
VariableDeclarationFragment
internalRole	fragments6

SimpleName
internalRolename"otherDie*”k:¬
CastExpression
internalRoleinitializerU

SimpleType
internalRoletype1

SimpleName
internalRolename"Die*ﬂk:<

SimpleName
internalRole
expression"otherObj*„k:µ
ExpressionStatement
internalRole
statements˛

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"result*˘l:É˘
InfixExpression
operator&&
internalRolerightHandSideê
InfixExpression
internalRoleleftOperand
operator==ô
FieldAccess
internalRoleleftOperand7

SimpleName
internalRolename"	iMyResult*ál:1
ThisExpression
internalRole
expression:â:ß
QualifiedName
internalRolerightOperand;

SimpleName
internalRole	qualifier"otherDie*îl:7

SimpleName
internalRolename"	iMyResult*ùl::*Çl:ï
InfixExpression
internalRolerightOperand
operator==õ
FieldAccess
internalRoleleftOperand9

SimpleName
internalRolename"iMyNumSides*øm:1
ThisExpression
internalRole
expression:â:©
QualifiedName
internalRolerightOperand;

SimpleName
internalRole	qualifier"otherDie*Œm:9

SimpleName
internalRolename"iMyNumSides*◊m::*∫m:*Çl:%Ñ*˘l:Ç::I_^"if:IF"if:IF"if:Fm
ReturnStatement
internalRole
statements:

SimpleName
internalRole
expression"result*˝o::`:3_^*Ô\:E2é
MethodDeclaration 
internalRolebodyDeclarations
constructorfalseÃ
Javadoc
internalRolejavadoc‰

TagElement
internalRoletagsr
TextElement
internalRole	fragmentsA
text9returns a String containing information about this Die<p>*útF
TextElement
internalRole	fragments
textpre: none<br>*›uÉ
TextElement
internalRole	fragmentsR
textJpost: return a String with information about the current state of this Die*Úv∫

TagElement
internalRoletags
tagName@return{
TextElement
internalRole	fragmentsJ
textB: A String with the number of sides and current result of this Die*Àw*ƒw:ãä4
Modifier
internalRole	modifiers"public*öy_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*°y:7

SimpleName
internalRolename"toString*®y:4ñ
Block
internalRolebodyÒ
ReturnStatement
internalRole
statementsΩ
InfixExpression
internalRole
expression
operator+E
StringLiteral
internalRoleleftOperand""Num sides "*¬z:yp
MethodInvocation
internalRolerightOperand:

SimpleName
internalRolename"getNumSides*—z:i:gG
StringLiteral 
internalRoleextendedOperands"
" result "*·z:yq
MethodInvocation 
internalRoleextendedOperands8

SimpleName
internalRolename"	getResult*Óz:i:g*¬z:):`:3_^*ës:E2*:E::$