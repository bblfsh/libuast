
CompilationUnit–&
TypeDeclaration
internalRoletypes
	interfacefalseà
Javadoc
internalRolejavadoc‹

TagElement
internalRoletagse
TextElement
internalRole	fragments5
text-A class to provide a simple list of integers.*g
TextElement7
text/List resizes automatically. Used to illustrate 
internalRole	fragments*:e
TextElement
internalRole	fragments5
text-various design and implementation details of *nI
TextElement
internalRole	fragments
texta class in Java.*†k
TextElement:
text2Version 1 only contains the instance variables and
internalRole	fragments*∫I
TextElement
internalRole	fragments
textthe constructors*Ò

TagElement
internalRoletags
tagName@author@
TextElement
internalRole	fragments
text scottm*ç	*Ü	:ãä4
Modifier
internalRole	modifiers"public*ü9

SimpleName
internalRolename"IntListVer1*¨:ƒ
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*Á4
Modifier
internalRole	modifiers"static*Ô3
Modifier
internalRole	modifiers"final*ˆ1
PrimitiveType
internalRoletype"int*¸∏
VariableDeclarationFragment
internalRole	fragments9

SimpleName
internalRolename"DEFAULT_CAP*Ä:C
NumberLiteral
internalRoleinitializer
token10*é:v„
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*∑Ñ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*ø'
	Dimension
internalRole
dimensionso
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"iValues*≈:ç
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*”1
PrimitiveType
internalRoletype"int*€m
VariableDeclarationFragment
internalRole	fragments3

SimpleName
internalRolename"iSize*ﬂ:ó
MethodDeclaration
constructortrue 
internalRolebodyDeclarations≥
Javadoc
internalRolejavadocà

TagElement
internalRoletagsd
TextElement
internalRole	fragments3
text+Default constructor. Creates an empty list.*˝:ãä4
Modifier
internalRole	modifiers"public*∑:

SimpleName
internalRolename"IntListVer1*æ:4ó
Block
internalRolebodys
ConstructorInvocation
internalRole
statements>

SimpleName
internalRole	arguments"DEFAULT_CAP*â::3_^*Ò:E2∂
MethodDeclaration
constructortrue 
internalRolebodyDeclarations…
Javadoc
internalRolejavadoc·

TagElement
internalRoletagsg
TextElement
internalRole	fragments6
text.Constructor to allow user of class to specify *€j
TextElement
internalRole	fragments9
text1initial capacity in case they intend to add a lot*íh
TextElement
internalRole	fragments7
text/of elements to new list. Creates an empty list.*Ã ∫

TagElement
internalRoletags
tagName@param=

SimpleName
internalRole	fragments"
initialCap*ã!:=
TextElement
text > 0
internalRole	fragments*ï!*Ñ!:ãä4
Modifier
internalRole	modifiers"public*¨#:

SimpleName
internalRolename"IntListVer1*≥#:4¡
SingleVariableDeclaration
varargsfalse
internalRole
parameters1
PrimitiveType
internalRoletype"int*ø#9

SimpleName
internalRolename"
initialCap*√#:7*ø#:6‹

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
initialCap*·$:D
NumberLiteral

token0
internalRolerightOperand*Ó$:v*·$:ı
InfixExpression
operator+
internalRolemessager
StringLiteral
internalRoleleftOperand"9"Violation of precondition. IntListVer1(int initialCap):"*Ú$:yt
StringLiteral
internalRolerightOperand":"initialCap must be greater than 0. Value of initialCap: "*ª%:yD

SimpleName 
internalRoleextendedOperands"
initialCap*¯%:*Ú$:):f∂
ExpressionStatement
internalRole
statementsˇ

Assignment
operator=
internalRole
expression?

SimpleName
internalRoleleftHandSide"iValues*ç	&:É˘
ArrayCreation
internalRolerightHandSideÑ
	ArrayType
internalRoletype8
PrimitiveType
internalRoleelementType"int*õ	&'
	Dimension
internalRole
dimensions>

SimpleName
internalRole
dimensions"
initialCap*ü	&::Ñ*ç	&:Ç:Ä
ExpressionStatement
internalRole
statements…

Assignment
internalRole
expression
operator==

SimpleName
internalRoleleftHandSide"iSize*µ	':ÉF
NumberLiteral
internalRolerightHandSide

token0*Ω	':vÑ*µ	':Ç::3_^*œ:E2*:E::$