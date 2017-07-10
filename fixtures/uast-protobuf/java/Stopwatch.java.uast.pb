
CompilationUnitü,
TypeDeclaration
internalRoletypes
	interfacefalse¦
Javadoc
internalRolejavadoc|

TagElement
internalRoletagsX
TextElement
internalRole	fragments(
text A class to measure time elapsed.*:‹Š3
Modifier
internalRole	modifiers"public*.6

SimpleName
internalRolename"	Stopwatch*;:
FieldDeclaration 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"private*M1
PrimitiveType
internalRoletype"long*Up
VariableDeclarationFragment
internalRole	fragments6

SimpleName
internalRolename"	startTime*Z:Ž
FieldDeclaration 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"private*j1
PrimitiveType
internalRoletype"long*ro
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"stopTime*w:Ò
FieldDeclaration 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*ˆ
4
Modifier
internalRole	modifiers"static*
3
Modifier
internalRole	modifiers"final*–
4
PrimitiveType
internalRoletype"double*œ
Ä
VariableDeclarationFragment
internalRole	fragments;

SimpleName
internalRolename"NANOS_PER_SEC*£
:M
NumberLiteral
token1000000000.0
internalRoleinitializer*³
:v¯
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsœ
Javadoc
internalRolejavadocr

TagElement
internalRoletagsN
TextElement
internalRole	fragments
textstart the stop watch.*Ì:‹Š4
Modifier
internalRole	modifiers"public*é9
PrimitiveType
internalRolereturnType2"void*ð4

SimpleName
internalRolename"start*õ:4
Block
internalRolebodyë
ExpressionStatement
internalRole
statements´

Assignment
internalRole
expression
operator=A

SimpleName
internalRoleleftHandSide"	startTime*:ƒ¬
MethodInvocation
internalRolerightHandSide;

SimpleName
internalRole
expression"System*:h7

SimpleName
internalRolename"nanoTime*”:i:g„*:‚::3_^*Å:E2¬
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations›
Javadoc
internalRolejavadocq

TagElement
internalRoletagsM
TextElement
textstop the stop watch.
internalRole	fragments*¯:‹Š4
Modifier
internalRole	modifiers"public*Ë9
PrimitiveType
internalRolereturnType2"void*Ò3

SimpleName
internalRolename"stop*×:4
Block
internalRolebodyê
ExpressionStatement
internalRole
statements³

Assignment
operator=
internalRole
expression@

SimpleName
internalRoleleftHandSide"stopTime*â:ƒ¬
MethodInvocation
internalRolerightHandSide;

SimpleName
internalRole
expression"System*í:h7

SimpleName
internalRolename"nanoTime*ô:i:g„*â:‚::3_^*¨:E2¼
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÈ
Javadoc
internalRolejavadocu

TagElement
internalRoletagsQ
TextElement
internalRole	fragments 
textelapsed time in seconds.*Œ¦

TagElement
internalRoletags
tagName@returng
TextElement6
text. the time recorded on the stopwatch in seconds
internalRole	fragments*®*§:‹Š4
Modifier
internalRole	modifiers"public*ä;
PrimitiveType
internalRolereturnType2"double*ë3

SimpleName
internalRolename"time*ò:4ð
Block
internalRolebodyË
ReturnStatement
internalRole
statements—
InfixExpression
internalRole
expression
operator/†
ParenthesizedExpression
internalRoleleftOperandÊ
InfixExpression
internalRole
expression
operator->

SimpleName
internalRoleleftOperand"stopTime*…:@

SimpleName
internalRolerightOperand"	startTime*:*…:*:D

SimpleName
internalRolerightOperand"NANOS_PER_SEC*:*„:,:`:3_^*†:E2Ê
MethodDeclaration 
internalRolebodyDeclarations
constructorfalse4
Modifier
internalRole	modifiers"public*² _

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*¹ :7

SimpleName
internalRolename"toString*À :4¡
Block
internalRolebodyü
ReturnStatement
internalRole
statementsÈ
InfixExpression
internalRole
expression
operator+I
StringLiteral
internalRoleleftOperand""elapsed time: "*Ù!:yi
MethodInvocation
internalRolerightOperand3

SimpleName
internalRolename"time*ì!:i:gH
StringLiteral 
internalRoleextendedOperands"" seconds."*õ!:y*Ù!:):`:3_^*² :E2º
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÐ
Javadoc
internalRolejavadocy

TagElement
internalRoletagsU
TextElement$
textelapsed time in nanoseconds.
internalRole	fragments*%ª

TagElement
tagName@return
internalRoletagsk
TextElement
internalRole	fragments:
text2 the time recorded on the stopwatch in nanoseconds*¶&*¯&:‹Š4
Modifier
internalRole	modifiers"public*ð(9
PrimitiveType
internalRolereturnType2"long*÷(@

SimpleName
internalRolename"timeInNanoseconds*ü(:4Û
Block
internalRolebody¶
ReturnStatement
internalRole
statements‚
ParenthesizedExpression
internalRole
expressionÊ
InfixExpression
internalRole
expression
operator->

SimpleName
internalRoleleftOperand"stopTime*œ):@

SimpleName
internalRolerightOperand"	startTime*§):*œ):*:`:3_^*Š$:E2*:E::$