
CompilationUnit„ê
TypeDeclaration
	interfacefalse
internalRoletypesù
Javadoc
internalRolejavadocÒ

TagElement
internalRoletagse
TextElement
internalRole	fragments5
text-A class to provide a simple list of integers.*g
TextElement
internalRole	fragments7
text/List resizes automatically. Used to illustrate *:e
TextElement5
text-various design and implementation details of 
internalRole	fragments*nI
TextElement
internalRole	fragments
texta class in Java.*†s
TextElement
internalRole	fragmentsB
text:Version 3 added the insert and remove methods. Changed the*∫V
TextElement
internalRole	fragments%
textadd method to rely on insert.*˘

TagElement
tagName@author
internalRoletags@
TextElement
text scottm
internalRole	fragments*¢	*õ	:ãä4
Modifier
internalRole	modifiers"public*¥9

SimpleName
internalRolename"IntListVer3*¡:ƒ
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*˚4
Modifier
internalRole	modifiers"static*É3
Modifier
internalRole	modifiers"final*ä1
PrimitiveType
internalRoletype"int*ê∏
VariableDeclarationFragment
internalRole	fragments9

SimpleName
internalRolename"DEFAULT_CAP*î:C
NumberLiteral
internalRoleinitializer
token10*¢:v„
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*üÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*ß'
	Dimension
internalRole
dimensionso
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"iValues*≠:ç
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*ª1
PrimitiveType
internalRoletype"int*√m
VariableDeclarationFragment
internalRole	fragments3

SimpleName
internalRolename"iSize*«:ó
MethodDeclaration
constructortrue 
internalRolebodyDeclarations≥
Javadoc
internalRolejavadocà

TagElement
internalRoletagsd
TextElement
internalRole	fragments3
text+Default constructor. Creates an empty list.*Â:ãä4
Modifier
internalRole	modifiers"public*ü:

SimpleName
internalRolename"IntListVer3*¶:4ó
Block
internalRolebodys
ConstructorInvocation
internalRole
statements>

SimpleName
internalRole	arguments"DEFAULT_CAP*Ò::3_^*Ÿ:E2∂
MethodDeclaration
constructortrue 
internalRolebodyDeclarations…
Javadoc
internalRolejavadoc·

TagElement
internalRoletagsg
TextElement6
text.Constructor to allow user of class to specify 
internalRole	fragments*√ j
TextElement
internalRole	fragments9
text1initial capacity in case they intend to add a lot*˙!h
TextElement
internalRole	fragments7
text/of elements to new list. Creates an empty list.*¥"∫

TagElement
internalRoletags
tagName@param=

SimpleName
internalRole	fragments"
initialCap*Û#:=
TextElement
internalRole	fragments
text > 0*˝#*Ï#:ãä4
Modifier
internalRole	modifiers"public*î%:

SimpleName
internalRolename"IntListVer3*õ%:4¡
SingleVariableDeclaration
varargsfalse
internalRole
parameters1
PrimitiveType
internalRoletype"int*ß%9

SimpleName
internalRolename"
initialCap*´%:7*ß%:6‹

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
initialCap*…&:D
NumberLiteral
internalRolerightOperand

token0*÷&:v*…&:ı
InfixExpression
internalRolemessage
operator+r
StringLiteral
internalRoleleftOperand"9"Violation of precondition. IntListVer1(int initialCap):"*⁄&:yt
StringLiteral
internalRolerightOperand":"initialCap must be greater than 0. Value of initialCap: "*£	':yD

SimpleName 
internalRoleextendedOperands"
initialCap*‡	':*⁄&:):f∂
ExpressionStatement
internalRole
statementsˇ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"iValues*ı	(:É˘
ArrayCreation
internalRolerightHandSideÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*É
('
	Dimension
internalRole
dimensions>

SimpleName
internalRole
dimensions"
initialCap*á
(::Ñ*ı	(:Ç:Ä
ExpressionStatement
internalRole
statements…

Assignment
internalRole
expression
operator==

SimpleName
internalRoleleftHandSide"iSize*ù
):ÉF
NumberLiteral
internalRolerightHandSide

token0*•
):vÑ*ù
):Ç::3_^*∑:E2‚	
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations
Javadoc
internalRolejavadocÎ

TagElement
internalRoletagsn
TextElement=
text5Default add method. Add x to the end of this IntList.
internalRole	fragments*∆
-W
TextElement
internalRole	fragments&
textSize of the list goes up by 1.*Ñ.◊

TagElement
tagName@param
internalRoletags4

SimpleName
internalRole	fragments"x*≤/:c
TextElement
internalRole	fragments2
text* The value to add to the end of this list.*≥/*´/:ãä4
Modifier
internalRole	modifiers"public*Ï19
PrimitiveType
internalRolereturnType2"void*Û12

SimpleName
internalRolename"add*¯1:4∏
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*¸10

SimpleName
internalRolename"x*Ä1:7*¸1:6∂
Block
internalRolebodyë
ExpressionStatement
internalRole
statements⁄
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"insert*≤3:i9

SimpleName
internalRole	arguments"iSize*π3:j5

SimpleName
internalRole	arguments"x*¿3:j:g::3_^*∫
,:E2…
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsû
Javadoc
internalRolejavadocë

TagElement
internalRoletagsm
TextElement<
text4Retrieve an element from the list based on position.
internalRole	fragments*‚7¡

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*¶8:K
TextElement
internalRole	fragments
text 0 <= pos < size()*©8*ü8õ

TagElement
internalRoletags
tagName@return\
TextElement
internalRole	fragments+
text# The element at the given position.*À9*ƒ9:ãä4
Modifier
internalRole	modifiers"public*˝;8
PrimitiveType
internalRolereturnType2"int*Ñ;2

SimpleName
internalRolename"get*à;:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*å;2

SimpleName
internalRolename"pos*ê;:7*å;:6Ó
Block
internalRolebody˝
AssertStatement
internalRole
statementsä
InfixExpression
internalRole
expression
operator&&À
InfixExpression
internalRoleleftOperand
operator<=C
NumberLiteral

token0
internalRoleleftOperand*¶<:v:

SimpleName
internalRolerightOperand"pos*´<:*¶<:
InfixExpression
internalRolerightOperand
operator<9

SimpleName
internalRoleleftOperand"pos*≤<:i
MethodInvocation
internalRolerightOperand3

SimpleName
internalRolename"size*∏<:i:g*≤<:*¶<:%º
InfixExpression
operator+
internalRolemessageT
StringLiteral
internalRoleleftOperand""Failed precondition get. "*¡<:y`
StringLiteral
internalRolerightOperand"&"pos it out of bounds. Value of pos: "*Í=:y=

SimpleName 
internalRoleextendedOperands"pos*ì=:*¡<:):f…
ReturnStatement
internalRole
statementsï
ArrayAccess
internalRole
expression6

SimpleName
internalRolearray"iValues*®>:2

SimpleName
internalRoleindex"pos*∞>::`:3_^*÷6:E2Í!
MethodDeclaration 
internalRolebodyDeclarations
constructorfalseõ
Javadoc
internalRolejavadoc∑

TagElement
internalRoletagsq
TextElement
internalRole	fragments@
text8Insert x at position pos. Elements with a position equal*‘Bu
TextElement
internalRole	fragmentsD
text<to pos or more are shifted to the right. (One added to their*ïCC
TextElement
internalRole	fragments
text
position.)*⁄Dd
TextElement
internalRole	fragments3
text+post: get(pos) = x, size() = old size() + 1*ÌE¬

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*®F:L
TextElement
internalRole	fragments
text 0 <= pos <= size()*´F*°Fr

TagElement
internalRoletags
tagName@param4

SimpleName
internalRole	fragments"x*ŒG:*«G:ãä4
Modifier
internalRole	modifiers"public*ﬁI9
PrimitiveType
internalRolereturnType2"void*ÂI5

SimpleName
internalRolename"insert*ÍI:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*ÒI2

SimpleName
internalRolename"pos*ıI:7*ÒI:6∏
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*˙I0

SimpleName
internalRolename"x*˛I:7*˙I:6”
Block
internalRolebody˚
AssertStatement
internalRole
statementsã
InfixExpression
operator&&
internalRole
expressionÀ
InfixExpression
internalRoleleftOperand
operator<=C
NumberLiteral
internalRoleleftOperand

token0*íJ:v:

SimpleName
internalRolerightOperand"pos*óJ:*íJ:Ò
InfixExpression
internalRolerightOperand
operator<=9

SimpleName
internalRoleleftOperand"pos*ûJ:i
MethodInvocation
internalRolerightOperand3

SimpleName
internalRolename"size*•J:i:g*ûJ:*íJ:%π
InfixExpression
internalRolemessage
operator+W
StringLiteral
internalRoleleftOperand""Failed precondition insert. "*ÆJ:yZ
StringLiteral
internalRolerightOperand" "pos is invalid. Value of pos: "*ÿK:y=

SimpleName 
internalRoleextendedOperands"pos*˚K:*ÆJ:):f•
ExpressionStatement
internalRole
statementso
MethodInvocation
internalRole
expression<

SimpleName
internalRolename"ensureCapcity*âL:i:g:˜	
ForStatement
internalRole
statementsõ
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*ßM•
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*´M::

SimpleName
internalRoleinitializer"iSize*ØM::PΩ
InfixExpression
internalRole
expression
operator>7

SimpleName
internalRoleleftOperand"i*∂M::

SimpleName
internalRolerightOperand"pos*∫M:*∂M:Q|
PostfixExpression
internalRoleupdaters
operator--2

SimpleName
internalRoleoperand"i*øM:*øM:RÍ
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
internalRolearray"iValues*“N:0

SimpleName
internalRoleindex"i*⁄N::É≠
ArrayAccess
internalRolerightHandSide6

SimpleName
internalRolearray"iValues*ﬂN:¬
InfixExpression
internalRoleindex
operator-7

SimpleName
internalRoleleftOperand"i*ÁN:D
NumberLiteral

token1
internalRolerightOperand*ÎN:v*ÁN:*:Ñ*“N:Ç::S_^:O”
ExpressionStatement
internalRole
statementsú

Assignment
internalRole
expression
operator=õ
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*ÉP:2

SimpleName
internalRoleindex"pos*ãP::É:

SimpleName
internalRolerightHandSide"x*íP:Ñ*ÉP:Ç:∏
ExpressionStatement
internalRole
statementsÅ
PostfixExpression
internalRole
expression
operator++6

SimpleName
internalRoleoperand"iSize*ûQ:*ûQ:::3_^*»A:E2•!
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations≠
Javadoc
internalRolejavadoc¶

TagElement
internalRoletagsk
TextElement
internalRole	fragments:
text2Remove an element from the list based on position.*≈Ub
TextElement
internalRole	fragments1
text)Elements with a position greater than pos*ÄVl
TextElement;
text3are shifted to the left. (One subtracted from their
internalRole	fragments*≤WC
TextElement
text
position.)
internalRole	fragments*ÓX¡

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*àY:K
TextElement
text 0 <= pos < size()
internalRole	fragments*ãY*ÅYï

TagElement
internalRoletags
tagName@returnV
TextElement
internalRole	fragments%
text The element that is removed.*≠Z*¶Z:ãä4
Modifier
internalRole	modifiers"public*Ÿ\8
PrimitiveType
internalRolereturnType2"int*‡\5

SimpleName
internalRolename"remove*‰\:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*Î\2

SimpleName
internalRolename"pos*Ô\:7*Î\:6∏
Block
internalRolebodyÄ
AssertStatement
internalRole
statementsä
InfixExpression
operator&&
internalRole
expressionÀ
InfixExpression
internalRoleleftOperand
operator<=C
NumberLiteral
internalRoleleftOperand

token0*Ö]:v:

SimpleName
internalRolerightOperand"pos*ä]:*Ö]:
InfixExpression
operator<
internalRolerightOperand9

SimpleName
internalRoleleftOperand"pos*ë]:i
MethodInvocation
internalRolerightOperand3

SimpleName
internalRolename"size*ó]:i:g*ë]:*Ö]:%ø
InfixExpression
internalRolemessage
operator+W
StringLiteral
internalRoleleftOperand""Failed precondition remove. "*†]:y`
StringLiteral
internalRolerightOperand"&"pos it out of bounds. Value of pos: "* ^:y=

SimpleName 
internalRoleextendedOperands"pos*Û^:*†]:):f˝
VariableDeclarationStatement
internalRole
statements1
PrimitiveType
internalRoletype"int*Å_ç
VariableDeclarationFragment
internalRole	fragments:

SimpleName
internalRolename"removedValue*Ö_:ñ
ArrayAccess
internalRoleinitializer6

SimpleName
internalRolearray"iValues*î_:2

SimpleName
internalRoleindex"pos*ú_:‡

ForStatement
internalRole
statementsô
VariableDeclarationExpression
internalRoleinitializers1
PrimitiveType
internalRoletype"int*Ø`£
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*≥`:8

SimpleName
internalRoleinitializer"pos*∑`::P“
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*º`:Œ
InfixExpression
internalRolerightOperand
operator-;

SimpleName
internalRoleleftOperand"iSize*¿`:D
NumberLiteral

token1
internalRolerightOperand*»`:v*¿`:**º`:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*À`:*À`:R¿
ExpressionStatement
internalRolebodyé

Assignment
internalRole
expression
operator=ô
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*›a:0

SimpleName
internalRoleindex"i*Âa::É≠
ArrayAccess
internalRolerightHandSide6

SimpleName
internalRolearray"iValues*Ía:¬
InfixExpression
internalRoleindex
operator+7

SimpleName
internalRoleleftOperand"i*Úa:D
NumberLiteral
internalRolerightOperand

token1*ˆa:v*Úa:):Ñ*›a:Ç:S:O∏
ExpressionStatement
internalRole
statementsÅ
PostfixExpression
operator--
internalRole
expression6

SimpleName
internalRoleoperand"iSize*Éb:*Éb::s
ReturnStatement
internalRole
statements@

SimpleName
internalRole
expression"removedValue*úc::`:3_^*πT:E2≥
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*ºf9
PrimitiveType
internalRolereturnType2"void*ƒf<

SimpleName
internalRolename"ensureCapcity*…f:4™
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
internalRoleleftOperand"iSize*∞i:£
QualifiedName
internalRolerightOperand:

SimpleName
internalRole	qualifier"iValues*πi:4

SimpleName
internalRolename"length*¡i::*∞i:G¢
ExpressionStatement
internalRolethenStatementh
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"resize*÷j:i:g:H"if:F:3_^*ºf:?2∆
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsµ
Javadoc
internalRolejavadocz

TagElement
internalRoletagsV
TextElement
internalRole	fragments%
textReturns the size of the list.*˛né

TagElement
internalRoletags
tagName@returnO
TextElement
text The size of the list.
internalRole	fragments*´o*§o:ãä4
Modifier
internalRole	modifiers"public*–q8
PrimitiveType
internalRolereturnType2"int*◊q3

SimpleName
internalRolename"size*€q:4ê
Block
internalRolebodyl
ReturnStatement
internalRole
statements9

SimpleName
internalRole
expression"iSize*Ûr::`:3_^*Úm:E2¡
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*«v9
PrimitiveType
internalRolereturnType2"void*œv5

SimpleName
internalRolename"resize*‘v:4ø
Block
internalRolebodyú
VariableDeclarationStatement
internalRole
statementsÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*Ëw'
	Dimension
internalRole
dimensionsÿ
VariableDeclarationFragment
internalRole	fragments2

SimpleName
internalRolename"temp*Ów:È
ArrayCreation
internalRoleinitializerÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*˘w'
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
internalRole	qualifier"iValues*˝w:4

SimpleName
internalRolename"length*Öw::D
NumberLiteral

token2
internalRolerightOperand*éw:v*˝w:+ˇ
ExpressionStatement
internalRole
statements»
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"System*õx:h8

SimpleName
internalRolename"	arraycopy*¢x:i;

SimpleName
internalRole	arguments"iValues*¨x:jA
NumberLiteral
internalRole	arguments

token0*µx:vj8

SimpleName
internalRole	arguments"temp*∏x:jA
NumberLiteral
internalRole	arguments

token0*æx:vj†
QualifiedName
internalRole	arguments:

SimpleName
internalRole	qualifier"iValues*¡x:4

SimpleName
internalRolename"length*…x::j:g:˘
ExpressionStatement
internalRole
statements¬

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"iValues*€y:É=

SimpleName
internalRolerightHandSide"temp*Ây:Ñ*€y:Ç::3_^*«v:?2ö
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÑ
Javadoc
internalRolejavadocŸ

TagElement
internalRoletagsh
TextElement
internalRole	fragments7
text/Return a String version of this list. Size and *â}K
TextElement
internalRole	fragments
textelements included.*¡~:ãä5
Modifier
internalRole	modifiers"public*‚Ä`

SimpleType
internalRolereturnType25

SimpleName
internalRolename"String*ÈÄ:8

SimpleName
internalRolename"toString*Ä:4Á
Block
internalRolebody¶
VariableDeclarationStatement
internalRole
statementsY

SimpleType
internalRoletype5

SimpleName
internalRolename"String*É:é
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"result*˜É:ú
InfixExpression
internalRoleinitializer
operator+B
StringLiteral
internalRoleleftOperand""size: "*Ä É:y=

SimpleName
internalRolerightOperand"iSize*ã É:M
StringLiteral 
internalRoleextendedOperands"", elements: ["*ì É:y*Ä É:)û

ForStatement
internalRole
statements¶
VariableDeclarationExpression
internalRoleinitializers2
PrimitiveType
internalRoletype"int*± ÑØ
VariableDeclarationFragment
internalRole	fragments0

SimpleName
internalRolename"i*µ Ñ:C
NumberLiteral
internalRoleinitializer

token0*π Ñ:v:P◊
InfixExpression
operator<
internalRole
expression8

SimpleName
internalRoleleftOperand"i*º Ñ:—
InfixExpression
internalRolerightOperand
operator-<

SimpleName
internalRoleleftOperand"iSize*¿ Ñ:E
NumberLiteral
internalRolerightOperand

token1*» Ñ:v*¿ Ñ:**º Ñ:Q~
PostfixExpression
internalRoleupdaters
operator++3

SimpleName
internalRoleoperand"i*À Ñ:*À Ñ:RÍ
ExpressionStatement
internalRolebody∏

Assignment
operator+=
internalRole
expression?

SimpleName
internalRoleleftHandSide"result*› Ö:É´
InfixExpression
operator+
internalRolerightHandSideô
ArrayAccess
internalRoleleftOperand7

SimpleName
internalRolearray"iValues*Á Ö:1

SimpleName
internalRoleindex"i*Ô Ö::?
StringLiteral
internalRolerightOperand"", "*Ù Ö:y*Á Ö:)Ñ*› Ö:ÇÜÖ):S:OÇ
IfStatement
internalRole
statementsŒ
InfixExpression
internalRole
expression
operator><

SimpleName
internalRoleleftOperand"iSize*Ü!Ü:E
NumberLiteral
internalRolerightOperand

token0*é!Ü:v*Ü!Ü:G˝
ExpressionStatement
internalRolethenStatement¬

Assignment
internalRole
expression
operator+=?

SimpleName
internalRoleleftHandSide"result*ü!á:Éµ
ArrayAccess
internalRolerightHandSide7

SimpleName
internalRolearray"iValues*©!á:…
InfixExpression
operator-
internalRoleindex<

SimpleName
internalRoleleftOperand"iSize*±!á:E
NumberLiteral
internalRolerightOperand

token1*π!á:v*±!á:*:Ñ*ü!á:ÇÜÖ):H"if:FÉ
ExpressionStatement
internalRole
statementsÃ

Assignment
internalRole
expression
operator+=?

SimpleName
internalRoleleftHandSide"result*∆!à:É@
StringLiteral
internalRolerightHandSide""]"*–!à:yÑ*∆!à:ÇÜÖ):n
ReturnStatement
internalRole
statements;

SimpleName
internalRole
expression"result*Â!â::`:3_^*˝|:E2Ä#
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"public*‡"é`

SimpleType
internalRolereturnType25

SimpleName
internalRolename"String*Á"é:I

SimpleName
internalRolename"toStringUsingStringBuffer*Ó"é:4¬ 
Block
internalRolebody•
VariableDeclarationStatement
internalRole
statements_

SimpleType
internalRoletype;

SimpleName
internalRolename"StringBuffer*î#è:á
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"result*°#è:ï
ClassInstanceCreation
internalRoleinitializer_

SimpleType
internalRoletype;

SimpleName
internalRolename"StringBuffer*Æ#è:†
ExpressionStatement
internalRole
statementsÈ
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*«#ê:h6

SimpleName
internalRolename"append*Œ#ê:i@
StringLiteral
internalRole	arguments""size: "*÷#ê:yj:g:ö
ExpressionStatement
internalRole
statements„
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*Î#ë:h6

SimpleName
internalRolename"append*Ú#ë:i:

SimpleName
internalRole	arguments"iSize*˙#ë:j:g:ß
ExpressionStatement
internalRole
statements
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*å$í:h6

SimpleName
internalRolename"append*ì$í:iG
StringLiteral
internalRole	arguments"", elements: ["*ö$í:yj:g:
ForStatement
internalRole
statements¶
VariableDeclarationExpression
internalRoleinitializers2
PrimitiveType
internalRoletype"int*π$ìØ
VariableDeclarationFragment
internalRole	fragments0

SimpleName
internalRolename"i*Ω$ì:C
NumberLiteral
internalRoleinitializer

token0*¡$ì:v:P◊
InfixExpression
internalRole
expression
operator<8

SimpleName
internalRoleleftOperand"i*ƒ$ì:—
InfixExpression
operator-
internalRolerightOperand<

SimpleName
internalRoleleftOperand"iSize*»$ì:E
NumberLiteral

token1
internalRolerightOperand*–$ì:v*»$ì:**ƒ$ì:Q~
PostfixExpression
operator++
internalRoleupdaters3

SimpleName
internalRoleoperand"i*”$ì:*”$ì:Rº
Block
internalRolebody¯
ExpressionStatement
internalRole
statements¡
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*Ê$î:h6

SimpleName
internalRolename"append*Ì$î:ió
ArrayAccess
internalRole	arguments7

SimpleName
internalRolearray"iValues*Ù$î:1

SimpleName
internalRoleindex"i*¸$î::j:g:ú
ExpressionStatement
internalRole
statementsÂ
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*é%ï:h6

SimpleName
internalRolename"append*ï%ï:i<
StringLiteral
internalRole	arguments"", "*ú%ï:yj:g::S_^:Oö
IfStatement
internalRole
statementsŒ
InfixExpression
operator>
internalRole
expression<

SimpleName
internalRoleleftOperand"iSize*ª%ó:E
NumberLiteral
internalRolerightOperand

token0*√%ó:v*ª%ó:Gï
ExpressionStatement
internalRolethenStatement⁄
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*‘%ò:h6

SimpleName
internalRolename"append*€%ò:i∞
ArrayAccess
internalRole	arguments7

SimpleName
internalRolearray"iValues*‚%ò:…
InfixExpression
internalRoleindex
operator-<

SimpleName
internalRoleleftOperand"iSize*Í%ò:E
NumberLiteral
internalRolerightOperand

token1*Ú%ò:v*Í%ò:*:j:g:H"if:Fõ
ExpressionStatement
internalRole
statements‰
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*Ä&ô:h6

SimpleName
internalRolename"append*á&ô:i;
StringLiteral
internalRole	arguments""]"*é&ô:yj:g:›
ReturnStatement
internalRole
statements©
MethodInvocation
internalRole
expression<

SimpleName
internalRole
expression"result*§&ö:h8

SimpleName
internalRolename"toString*´&ö:i:g:`:3_^*‡"é:E2“1
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÿ
Javadoc
internalRolejavadoc’

TagElement
internalRoletagsl
TextElement
internalRole	fragments:
text2Return true if this IntList is equal to other.<br>*”&ûC
TextElement
internalRole	fragments
text	pre: none*ç'ü“

TagElement
internalRoletags
tagName@param9

SimpleName
internalRole	fragments"other*•'†:X
TextElement
internalRole	fragments&
text The object to comapre to this*™'†*û'†Ä

TagElement
internalRoletags
tagName@returnf
TextElement
internalRole	fragments4
text, true if other is a non null, IntList object*◊'°k
TextElement
internalRole	fragments9
text1that is the same size as this IntList and has the*ã(¢k
TextElement9
text1same elements in the same order, false otherwise.
internalRole	fragments*ƒ(£*–'°:ãä5
Modifier
internalRole	modifiers"public*É)•=
PrimitiveType
internalRolereturnType2"boolean*ä)•6

SimpleName
internalRolename"equals*í)•:4Ê
SingleVariableDeclaration
internalRole
parameters
varargsfalseY

SimpleType
internalRoletype5

SimpleName
internalRolename"Object*ô)•:5

SimpleName
internalRolename"other*†)•:7*ô)•:6Ü'
Block
internalRolebody„
VariableDeclarationStatement
internalRole
statements6
PrimitiveType
internalRoletype"boolean*±)¶o
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"result*π)¶:ã$
IfStatement
internalRole
statementsø
InfixExpression
internalRole
expression
operator==<

SimpleName
internalRoleleftOperand"other*Õ)ß:5
NullLiteral
internalRolerightOperand"null:u*Õ)ß:Gî
ExpressionStatement
internalRolethenStatementŸ

Assignment
operator=
internalRole
expression?

SimpleName
internalRoleleftHandSide"result*§*©:ÉS
BooleanLiteral
booleanValuefalse
internalRolerightHandSide*≠*©:oÑ*§*©:Ç:H˛
IfStatement
internalRoleelseStatementæ
InfixExpression
operator==
internalRole
expression=

SimpleName
internalRolerightOperand"other*Õ*™:3
ThisExpression
internalRoleleftOperand:â*≈*™:Gì
ExpressionStatement
internalRolethenStatementÿ

Assignment
operator=
internalRole
expression?

SimpleName
internalRoleleftHandSide"result*¨+¨:ÉR
BooleanLiteral
internalRolerightHandSide
booleanValuetrue*µ+¨:oÑ*¨+¨:Ç:HÔ
IfStatement
internalRoleelseStatementú
InfixExpression
internalRole
expression
operator!=°
MethodInvocation
internalRoleleftOperand8

SimpleName
internalRolename"getClass*“+≠:i2
ThisExpression
internalRole
expression:hâ:g´
MethodInvocation
internalRolerightOperand;

SimpleName
internalRole
expression"other*‡+≠:h8

SimpleName
internalRolename"getClass*Ê+≠:i:g*Õ+≠:Gî
ExpressionStatement
internalRolethenStatementŸ

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*º,Ø:ÉS
BooleanLiteral
internalRolerightHandSide
booleanValuefalse*≈,Ø:oÑ*º,Ø:Ç:HÅ
Block
internalRoleelseStatementﬁ
VariableDeclarationStatement
internalRole
statements^

SimpleType
internalRoletype:

SimpleName
internalRolename"IntListVer3*£-≤:¡
VariableDeclarationFragment
internalRole	fragments;

SimpleName
internalRolename"otherIntList*Ø-≤:…
CastExpression
internalRoleinitializer^

SimpleType
internalRoletype:

SimpleName
internalRolename"IntListVer3*ø-≤::

SimpleName
internalRole
expression"other*À-≤:›
ExpressionStatement
internalRole
statements¶

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*ﬂ-≥:Éü
InfixExpression
internalRolerightHandSide
operator==ù
MethodInvocation
internalRoleleftOperand4

SimpleName
internalRolename"size*Ì-≥:i2
ThisExpression
internalRole
expression:hâ:gÆ
MethodInvocation
internalRolerightOperandB

SimpleName
internalRole
expression"otherIntList*˜-≥:h4

SimpleName
internalRolename"size*Ñ.≥:i:g*Ë-≥:Ñ*ﬂ-≥:Ç:†
VariableDeclarationStatement
internalRole
statements2
PrimitiveType
internalRoletype"int*ô.¥Ø
VariableDeclarationFragment
internalRole	fragments0

SimpleName
internalRolename"i*ù.¥:C
NumberLiteral
internalRoleinitializer

token0*°.¥:vÔ

WhileStatement
internalRole
statements—
InfixExpression
operator&&
internalRole
expression√
InfixExpression
internalRoleleftOperand
operator<8

SimpleName
internalRoleleftOperand"i*∑.µ:=

SimpleName
internalRolerightOperand"iSize*ª.µ:*∑.µ:>

SimpleName
internalRolerightOperand"result*ƒ.µ:*∑.µ:V%Ë
Block
internalRolebodyã
ExpressionStatement
internalRole
statements‘

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*ﬁ.∂:ÉÕ
InfixExpression
internalRolerightHandSide
operator==Ú
ArrayAccess
internalRoleleftOperandè
FieldAccess
internalRolearray6

SimpleName
internalRolename"iValues*Ï.∂:1
ThisExpression
internalRole
expression:â1

SimpleName
internalRoleindex"i*Ù.∂::á
ArrayAccess
internalRolerightOperand£
QualifiedName
internalRolearray@

SimpleName
internalRole	qualifier"otherIntList*˙.∂:6

SimpleName
internalRolename"iValues*á/∂::1

SimpleName
internalRoleindex"i*è/∂::*Á.∂:Ñ*ﬁ.∂:Ç:µ
ExpressionStatement
internalRole
statements
PostfixExpression
operator++
internalRole
expression3

SimpleName
internalRoleoperand"i*§/∑:*§/∑:::W_^:U:I_^"if:IF"if:IF"if:Fn
ReturnStatement
internalRole
statements;

SimpleName
internalRole
expression"result*”/∫::`:3_^*»&ù:E2*:E::$