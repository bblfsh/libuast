
CompilationUnitÚ
TypeDeclaration
	interfacefalse
internalRoletypesƒ
Javadoc
internalRolejavadocò

TagElement
internalRoletagsY
TextElement
internalRole	fragments)
text!A class to provide a simple list.*g
TextElement7
text/List resizes automatically. Used to illustrate 
internalRole	fragments*.e
TextElement
internalRole	fragments5
text-various design and implementation details of *bI
TextElement
internalRole	fragments
texta class in Java.*î

TagElement
internalRoletags
tagName@author@
TextElement
text scottm
internalRole	fragments*µ*Æ:ãä4
Modifier
internalRole	modifiers"public*«
9

SimpleName
internalRolename"GenericList*‘
:ƒ
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*é4
Modifier
internalRole	modifiers"static*ñ3
Modifier
internalRole	modifiers"final*ù1
PrimitiveType
internalRoletype"int*£∏
VariableDeclarationFragment
internalRole	fragments9

SimpleName
internalRolename"DEFAULT_CAP*ß:C
NumberLiteral
internalRoleinitializer
token10*µ:vä
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*≤´
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*∫:'
	Dimension
internalRole
dimensionso
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"iValues*√:ç
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*—1
PrimitiveType
internalRoletype"int*Ÿm
VariableDeclarationFragment
internalRole	fragments3

SimpleName
internalRolename"iSize*›:â

MethodDeclaration 
internalRolebodyDeclarations
constructorfalse
Javadoc
internalRolejavadocÎ

TagElement
internalRoletagsn
TextElement
internalRole	fragments=
text5Default add method. Add x to the end of this IntList.*˚W
TextElement
internalRole	fragments&
textSize of the list goes up by 1.*π◊

TagElement
internalRoletags
tagName@param4

SimpleName
internalRole	fragments"x*Á:c
TextElement
internalRole	fragments2
text* The value to add to the end of this list.*Ë*‡:ãä4
Modifier
internalRole	modifiers"public*°9
PrimitiveType
internalRolereturnType2"void*®2

SimpleName
internalRolename"add*≠:4ﬂ
SingleVariableDeclaration
varargsfalse
internalRole
parametersX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*±:0

SimpleName
internalRolename"x*∏:7*±:6∂
Block
internalRolebodyë
ExpressionStatement
internalRole
statements⁄
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"insert*≈:i9

SimpleName
internalRole	arguments"iSize*Ã:j5

SimpleName
internalRole	arguments"x*”:j:g::3_^*Ô:E2œ
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*È_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"Object*:2

SimpleName
internalRolename"get*˜:4∫
SingleVariableDeclaration
varargsfalse
internalRole
parameters1
PrimitiveType
internalRoletype"int*˚2

SimpleName
internalRolename"pos*ˇ:7*˚:6Ó
Block
internalRolebody…
ReturnStatement
internalRole
statementsï
ArrayAccess
internalRole
expression6

SimpleName
internalRolearray"iValues*ï:2

SimpleName
internalRoleindex"pos*ù::`:3_^*È:E2ê
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsî
Javadoc
internalRolejavadocﬁ

TagElement
internalRoletagsT
TextElement
internalRole	fragments#
textInsert obj at position pos.*¡"d
TextElement
internalRole	fragments3
text+post: get(pos) = x, size() = old size() + 1*Â#¬

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*†$:L
TextElement
internalRole	fragments
text 0 <= pos <= size()*£$*ô$√

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"obj*∆%:M
TextElement
text The element to add.
internalRole	fragments*…%*ø%:ãä4
Modifier
internalRole	modifiers"public*Ï'9
PrimitiveType
internalRolereturnType2"void*Û'5

SimpleName
internalRolename"insert*¯':4∫
SingleVariableDeclaration
varargsfalse
internalRole
parameters1
PrimitiveType
internalRoletype"int*ˇ'2

SimpleName
internalRolename"pos*É':7*ˇ':6·
SingleVariableDeclaration
internalRole
parameters
varargsfalseX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*à':2

SimpleName
internalRolename"obj*è':7*à':6◊
Block
internalRolebody•
ExpressionStatement
internalRole
statementso
MethodInvocation
internalRole
expression<

SimpleName
internalRolename"ensureCapcity*û(:i:g:˜	
ForStatement
internalRole
statementsõ
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*º)•
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*¿)::

SimpleName
internalRoleinitializer"iSize*ƒ)::PΩ
InfixExpression
operator>
internalRole
expression7

SimpleName
internalRoleleftOperand"i*À)::

SimpleName
internalRolerightOperand"pos*œ):*À):Q|
PostfixExpression
operator--
internalRoleupdaters2

SimpleName
internalRoleoperand"i*‘):*‘):RÍ
Block
internalRolebody≈
ExpressionStatement
internalRole
statementsé

Assignment
internalRole
expression
operator=ô
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*Á*:0

SimpleName
internalRoleindex"i*Ô*::É≠
ArrayAccess
internalRolerightHandSide6

SimpleName
internalRolearray"iValues*Ù*:¬
InfixExpression
operator-
internalRoleindex7

SimpleName
internalRoleleftOperand"i*¸*:D
NumberLiteral
internalRolerightOperand

token1*Ä	*:v*¸*:*:Ñ*Á*:Ç::S_^:O’
ExpressionStatement
internalRole
statementsû

Assignment
internalRole
expression
operator=õ
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*ò	,:2

SimpleName
internalRoleindex"pos*†	,::É<

SimpleName
internalRolerightHandSide"obj*ß	,:Ñ*ò	,:Ç:∏
ExpressionStatement
internalRole
statementsÅ
PostfixExpression
internalRole
expression
operator++6

SimpleName
internalRoleoperand"iSize*µ	-:*µ	-:::3_^*µ!:E2®
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*–	0_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"Object*◊	0:5

SimpleName
internalRolename"remove*ﬁ	0:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*Â	02

SimpleName
internalRolename"pos*È	0:7*Â	0:6ƒ
Block
internalRolebody§
VariableDeclarationStatement
internalRole
statementsX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*¯	1:ç
VariableDeclarationFragment
internalRole	fragments:

SimpleName
internalRolename"removedValue*ˇ	1:ñ
ArrayAccess
internalRoleinitializer6

SimpleName
internalRolearray"iValues*é
1:2

SimpleName
internalRoleindex"pos*ñ
1:‡

ForStatement
internalRole
statementsô
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*©
2£
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*≠
2:8

SimpleName
internalRoleinitializer"pos*±
2::P“
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*∂
2:Œ
InfixExpression
internalRolerightOperand
operator-;

SimpleName
internalRoleleftOperand"iSize*∫
2:D
NumberLiteral

token1
internalRolerightOperand*¬
2:v*∫
2:**∂
2:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*≈
2:*≈
2:R¿
ExpressionStatement
internalRolebodyé

Assignment
internalRole
expression
operator=ô
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*◊
3:0

SimpleName
internalRoleindex"i*ﬂ
3::É≠
ArrayAccess
internalRolerightHandSide6

SimpleName
internalRolearray"iValues*‰
3:¬
InfixExpression
internalRoleindex
operator+7

SimpleName
internalRoleleftOperand"i*Ï
3:D
NumberLiteral
internalRolerightOperand

token1*
3:v*Ï
3:):Ñ*◊
3:Ç:S:OÂ
ExpressionStatement
internalRole
statementsÆ

Assignment
internalRole
expression
operator=∞
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*˝
4:∆
InfixExpression
internalRoleindex
operator-;

SimpleName
internalRoleleftOperand"iSize*Ö4:D
NumberLiteral
internalRolerightOperand

token1*ç4:v*Ö4:*:É7
NullLiteral
internalRolerightHandSide"null:uÑ*˝
4:Ç:∏
ExpressionStatement
internalRole
statementsÅ
PostfixExpression
internalRole
expression
operator--6

SimpleName
internalRoleoperand"iSize*°5:*°5::s
ReturnStatement
internalRole
statements@

SimpleName
internalRole
expression"removedValue*∫6::`:3_^*–	0:E2≥
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*⁄99
PrimitiveType
internalRolereturnType2"void*‚9<

SimpleName
internalRolename"ensureCapcity*Á9:4™
Block
internalRolebodyÖ
IfStatement
internalRole
statements¨
InfixExpression
operator==
internalRole
expression;

SimpleName
internalRoleleftOperand"iSize*Œ<:£
QualifiedName
internalRolerightOperand:

SimpleName
internalRole	qualifier"iValues*◊<:4

SimpleName
internalRolename"length*ﬂ<::*Œ<:G¢
ExpressionStatement
internalRolethenStatementh
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"resize*Ù=:i:g:H"if:F:3_^*⁄9:?2é
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*ê@8
PrimitiveType
internalRolereturnType2"int*ó@3

SimpleName
internalRolename"size*õ@:4ê
Block
internalRolebodyl
ReturnStatement
internalRole
statements9

SimpleName
internalRole
expression"iSize*≥A::`:3_^*ê@:E2è
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*áE9
PrimitiveType
internalRolereturnType2"void*èE5

SimpleName
internalRolename"resize*îE:4ç
Block
internalRolebodyÍ
VariableDeclarationStatement
internalRole
statements´
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*®F:'
	Dimension
internalRole
dimensionsˇ
VariableDeclarationFragment
internalRole	fragments2

SimpleName
internalRolename"temp*±F:ê
ArrayCreation
internalRoleinitializer´
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*ºF:'
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
internalRole	qualifier"iValues*√F:4

SimpleName
internalRolename"length*ÀF::D
NumberLiteral
internalRolerightOperand

token2*‘F:v*√F:+ˇ
ExpressionStatement
internalRole
statements»
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"System*·G:h8

SimpleName
internalRolename"	arraycopy*ËG:i;

SimpleName
internalRole	arguments"iValues*ÚG:jA
NumberLiteral
internalRole	arguments

token0*˚G:vj8

SimpleName
internalRole	arguments"temp*˛G:jA
NumberLiteral

token0
internalRole	arguments*ÑG:vj†
QualifiedName
internalRole	arguments:

SimpleName
internalRole	qualifier"iValues*áG:4

SimpleName
internalRolename"length*èG::j:g:˘
ExpressionStatement
internalRole
statements¬

Assignment
operator=
internalRole
expression?

SimpleName
internalRoleleftHandSide"iValues*°H:É=

SimpleName
internalRolerightHandSide"temp*´H:Ñ*°H:Ç::3_^*áE:?2‚
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÑ
Javadoc
internalRolejavadocŸ

TagElement
internalRoletagsh
TextElement
internalRole	fragments7
text/Return a String version of this list. Size and *œLK
TextElement
internalRole	fragments
textelements included.*áM:ãä4
Modifier
internalRole	modifiers"public*®O_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*ØO:7

SimpleName
internalRolename"toString*∂O:4≤
Block
internalRolebody†
VariableDeclarationStatement
internalRole
statementsX

SimpleType
internalRoletype4

SimpleName
internalRolename"String*∂R:â
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*ΩR:ò
InfixExpression
internalRoleinitializer
operator+A
StringLiteral
internalRoleleftOperand""size: "*∆R:y<

SimpleName
internalRolerightOperand"iSize*—R:L
StringLiteral 
internalRoleextendedOperands"", elements: ["*ŸR:y*∆R:)¸

ForStatement
internalRole
statements£
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*˜S≠
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*˚S:B
NumberLiteral
internalRoleinitializer

token0*ˇS:v:P“
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*ÇS:Œ
InfixExpression
operator-
internalRolerightOperand;

SimpleName
internalRoleleftOperand"iSize*ÜS:D
NumberLiteral
internalRolerightOperand

token1*éS:v*ÜS:**ÇS:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*ëS:*ëS:R“
ExpressionStatement
internalRolebody†

Assignment
internalRole
expression
operator+=>

SimpleName
internalRoleleftHandSide"result*£T:Éï
InfixExpression
internalRolerightHandSide
operator+Ö
MethodInvocation
internalRoleleftOperandñ
ArrayAccess
internalRole
expression6

SimpleName
internalRolearray"iValues*≠T:0

SimpleName
internalRoleindex"i*µT::h7

SimpleName
internalRolename"toString*∏T:i:g>
StringLiteral
internalRolerightOperand"", "*≈T:y*≠T:)Ñ*£T:ÇÜÖ):S:O˘
IfStatement
internalRole
statementsÀ
InfixExpression
operator>
internalRole
expression;

SimpleName
internalRoleleftOperand"iSize*◊U:D
NumberLiteral

token0
internalRolerightOperand*ﬂU:v*◊U:G˜
ExpressionStatement
internalRolethenStatementº

Assignment
operator+=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*V:É±
ArrayAccess
internalRolerightHandSide6

SimpleName
internalRolearray"iValues*˙V:∆
InfixExpression
operator-
internalRoleindex;

SimpleName
internalRoleleftOperand"iSize*ÇV:D
NumberLiteral
internalRolerightOperand

token1*äV:v*ÇV:*:Ñ*V:ÇÜÖ):H"if:FÄ
ExpressionStatement
internalRole
statements…

Assignment
operator+=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*óW:É?
StringLiteral
internalRolerightHandSide""]"*°W:yÑ*óW:ÇÜÖ):m
ReturnStatement
internalRole
statements:

SimpleName
internalRole
expression"result*∂X::`:3_^*√K:E2—"
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*±]_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*∏]:H

SimpleName
internalRolename"toStringUsingStringBuffer*ø]:4ó 
Block
internalRolebody¢
VariableDeclarationStatement
internalRole
statements^

SimpleType
internalRoletype:

SimpleName
internalRolename"StringBuffer*Â^:Ö
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*Ú^:î
ClassInstanceCreation
internalRoleinitializer^

SimpleType
internalRoletype:

SimpleName
internalRolename"StringBuffer*ˇ^:ù
ExpressionStatement
internalRole
statementsÊ
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ò_:h5

SimpleName
internalRolename"append*ü_:i?
StringLiteral
internalRole	arguments""size: "*ß_:yj:g:ó
ExpressionStatement
internalRole
statements‡
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*º`:h5

SimpleName
internalRolename"append*√`:i9

SimpleName
internalRole	arguments"iSize*À`:j:g:§
ExpressionStatement
internalRole
statementsÌ
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*›a:h5

SimpleName
internalRolename"append*‰a:iF
StringLiteral
internalRole	arguments"", elements: ["*Îa:yj:g:ﬂ
ForStatement
internalRole
statements£
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*äb≠
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*éb:B
NumberLiteral
internalRoleinitializer

token0*íb:v:P“
InfixExpression
operator<
internalRole
expression7

SimpleName
internalRoleleftOperand"i*ïb:Œ
InfixExpression
internalRolerightOperand
operator-;

SimpleName
internalRoleleftOperand"iSize*ôb:D
NumberLiteral

token1
internalRolerightOperand*°b:v*ôb:**ïb:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*§b:*§b:Rµ
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
expression"result*∑c:h5

SimpleName
internalRolename"append*æc:iï
ArrayAccess
internalRole	arguments6

SimpleName
internalRolearray"iValues*≈c:0

SimpleName
internalRoleindex"i*Õc::j:g:ô
ExpressionStatement
internalRole
statements‚
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ﬂd:h5

SimpleName
internalRolename"append*Êd:i;
StringLiteral
internalRole	arguments"", "*Ìd:yj:g::S_^:Oë
IfStatement
internalRole
statementsÀ
InfixExpression
internalRole
expression
operator>;

SimpleName
internalRoleleftOperand"iSize*åf:D
NumberLiteral
internalRolerightOperand

token0*îf:v*åf:Gè
ExpressionStatement
internalRolethenStatement‘
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*•g:h5

SimpleName
internalRolename"append*¨g:i¨
ArrayAccess
internalRole	arguments6

SimpleName
internalRolearray"iValues*≥g:∆
InfixExpression
operator-
internalRoleindex;

SimpleName
internalRoleleftOperand"iSize*ªg:D
NumberLiteral
internalRolerightOperand

token1*√g:v*ªg:*:j:g:H"if:Fò
ExpressionStatement
internalRole
statements·
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*—h:h5

SimpleName
internalRolename"append*ÿh:i:
StringLiteral
internalRole	arguments""]"*ﬂh:yj:g:€
ReturnStatement
internalRole
statementsß
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*ıi:h7

SimpleName
internalRolename"toString*¸i:i:g:`:3_^*±]:E2ó
MethodDeclaration
constructortrue 
internalRolebodyDeclarations≥
Javadoc
internalRolejavadocà

TagElement
internalRoletagsd
TextElement
internalRole	fragments3
text+Default constructor. Creates an empty list.*¢m:ãä4
Modifier
internalRole	modifiers"public*‹o:

SimpleName
internalRolename"GenericList*„o:4ó
Block
internalRolebodys
ConstructorInvocation
internalRole
statements>

SimpleName
internalRole	arguments"DEFAULT_CAP*Æq::3_^*ñl:E2›
MethodDeclaration 
internalRolebodyDeclarations
constructortrue…
Javadoc
internalRolejavadoc·

TagElement
internalRoletagsg
TextElement
internalRole	fragments6
text.Constructor to allow user of class to specify *Ävj
TextElement
internalRole	fragments9
text1initial capacity in case they intend to add a lot*∑wh
TextElement
internalRole	fragments7
text/of elements to new list. Creates an empty list.*Òx∫

TagElement
tagName@param
internalRoletags=

SimpleName
internalRole	fragments"
initialCap*∞y:=
TextElement
internalRole	fragments
text > 0*∫y*©y:ãä4
Modifier
internalRole	modifiers"public*—{:

SimpleName
internalRolename"GenericList*ÿ{:4¡
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*‰{9

SimpleName
internalRolename"
initialCap*Ë{:7*‰{:6É
Block
internalRolebody˚
AssertStatement
internalRole
statementsœ
InfixExpression
operator>
internalRole
expression@

SimpleName
internalRoleleftOperand"
initialCap*Ü|:D
NumberLiteral
internalRolerightOperand

token0*ì|:v*Ü|:ı
InfixExpression
internalRolemessage
operator+r
StringLiteral
internalRoleleftOperand"9"Violation of precondition. IntListVer1(int initialCap):"*ó|:yt
StringLiteral
internalRolerightOperand":"initialCap must be greater than 0. Value of initialCap: "*‡}:yD

SimpleName 
internalRoleextendedOperands"
initialCap*ù}:*ó|:):f›
ExpressionStatement
internalRole
statements¶

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"iValues*≤~:É†
ArrayCreation
internalRolerightHandSide´
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*¿~:'
	Dimension
internalRole
dimensions>

SimpleName
internalRole
dimensions"
initialCap*«~::Ñ*≤~:Ç:Ä
ExpressionStatement
internalRole
statements…

Assignment
operator=
internalRole
expression=

SimpleName
internalRoleleftHandSide"iSize*›:ÉF
NumberLiteral
internalRolerightHandSide

token0*Â:vÑ*›:Ç::3_^*Ùu:E2Â1
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÿ
Javadoc
internalRolejavadoc’

TagElement
internalRoletagsl
TextElement
internalRole	fragments:
text2Return true if this IntList is equal to other.<br>*ÑÉC
TextElement
internalRole	fragments
text	pre: none*æÑ“

TagElement
internalRoletags
tagName@param9

SimpleName
internalRole	fragments"other*÷Ö:X
TextElement
internalRole	fragments&
text The object to comapre to this*€Ö*œÖÄ

TagElement
internalRoletags
tagName@returnf
TextElement
internalRole	fragments4
text, true if other is a non null, IntList object*àÜk
TextElement
internalRole	fragments9
text1that is the same size as this IntList and has the*ºák
TextElement
internalRole	fragments9
text1same elements in the same order, false otherwise.*ıà*ÅÜ:ãä5
Modifier
internalRole	modifiers"public*¥ ä=
PrimitiveType
internalRolereturnType2"boolean*ª ä6

SimpleName
internalRolename"equals*√ ä:4Ê
SingleVariableDeclaration
internalRole
parameters
varargsfalseY

SimpleType
internalRoletype5

SimpleName
internalRolename"Object*  ä:5

SimpleName
internalRolename"other*— ä:7*  ä:6ô'
Block
internalRolebody„
VariableDeclarationStatement
internalRole
statements6
PrimitiveType
internalRoletype"boolean*‚ ão
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"result*Í ã:û$
IfStatement
internalRole
statementsø
InfixExpression
internalRole
expression
operator==<

SimpleName
internalRoleleftOperand"other*˛ å:5
NullLiteral
internalRolerightOperand"null:u*˛ å:Gî
ExpressionStatement
internalRolethenStatementŸ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*’!é:ÉS
BooleanLiteral
booleanValuefalse
internalRolerightHandSide*ﬁ!é:oÑ*’!é:Ç:Hë 
IfStatement
internalRoleelseStatementæ
InfixExpression
internalRole
expression
operator===

SimpleName
internalRolerightOperand"other*˛!è:3
ThisExpression
internalRoleleftOperand:â*ˆ!è:Gì
ExpressionStatement
internalRolethenStatementÿ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*›"ë:ÉR
BooleanLiteral
booleanValuetrue
internalRolerightHandSide*Ê"ë:oÑ*›"ë:Ç:HÇ
IfStatement
internalRoleelseStatementú
InfixExpression
internalRole
expression
operator!=°
MethodInvocation
internalRoleleftOperand8

SimpleName
internalRolename"getClass*É#í:i2
ThisExpression
internalRole
expression:hâ:g´
MethodInvocation
internalRolerightOperand;

SimpleName
internalRole
expression"other*ë#í:h8

SimpleName
internalRolename"getClass*ó#í:i:g*˛"í:Gî
ExpressionStatement
internalRolethenStatementŸ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*Ì#î:ÉS
BooleanLiteral
internalRolerightHandSide
booleanValuefalse*ˆ#î:oÑ*Ì#î:Ç:Hî
Block
internalRoleelseStatement€
VariableDeclarationStatement
internalRole
statements^

SimpleType
internalRoletype:

SimpleName
internalRolename"GenericList*‘$ó:æ
VariableDeclarationFragment
internalRole	fragments8

SimpleName
internalRolename"	otherList*‡$ó:…
CastExpression
internalRoleinitializer^

SimpleType
internalRoletype:

SimpleName
internalRolename"GenericList*Ì$ó::

SimpleName
internalRole
expression"other*˘$ó:⁄
ExpressionStatement
internalRole
statements£

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*ç%ò:Éú
InfixExpression
internalRolerightHandSide
operator==ù
MethodInvocation
internalRoleleftOperand4

SimpleName
internalRolename"size*õ%ò:i2
ThisExpression
internalRole
expression:hâ:g´
MethodInvocation
internalRolerightOperand?

SimpleName
internalRole
expression"	otherList*•%ò:h4

SimpleName
internalRolename"size*Ø%ò:i:g*ñ%ò:Ñ*ç%ò:Ç:†
VariableDeclarationStatement
internalRole
statements2
PrimitiveType
internalRoletype"int*ƒ%ôØ
VariableDeclarationFragment
internalRole	fragments0

SimpleName
internalRolename"i*»%ô:C
NumberLiteral

token0
internalRoleinitializer*Ã%ô:và
WhileStatement
internalRole
statements—
InfixExpression
internalRole
expression
operator&&√
InfixExpression
operator<
internalRoleleftOperand8

SimpleName
internalRoleleftOperand"i*‚%ö:=

SimpleName
internalRolerightOperand"iSize*Ê%ö:*‚%ö:>

SimpleName
internalRolerightOperand"result*Ô%ö:*‚%ö:V%Å
Block
internalRolebody§
ExpressionStatement
internalRole
statementsÌ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*â&õ:ÉÊ
MethodInvocation
internalRolerightHandSideÒ
ArrayAccess
internalRole
expressionè
FieldAccess
internalRolearray6

SimpleName
internalRolename"iValues*ó&õ:1
ThisExpression
internalRole
expression:â1

SimpleName
internalRoleindex"i*ü&õ::h6

SimpleName
internalRolename"equals*¢&õ:iÅ
ArrayAccess
internalRole	arguments†
QualifiedName
internalRolearray=

SimpleName
internalRole	qualifier"	otherList*™&õ:6

SimpleName
internalRolename"iValues*¥&õ::1

SimpleName
internalRoleindex"i*º&õ::j:gÑ*â&õ:Ç:µ
ExpressionStatement
internalRole
statements
PostfixExpression
operator++
internalRole
expression3

SimpleName
internalRoleoperand"i*”&ú:*”&ú:::W_^:U:I_^"if:IF"if:IF"if:Fn
ReturnStatement
internalRole
statements;

SimpleName
internalRole
expression"result*Ç'ü::`:3_^*˘Ç:E2*:E::$