
CompilationUnit–A
TypeDeclaration
internalRoletypes
	interfacefalse®
Javadoc
internalRolejavadocÔ

TagElement
internalRoletagss
TextElement
internalRole	fragmentsC
text;A class that represents a node to be used in a linked list.*V
TextElement
internalRole	fragments&
textThese nodes are singly linked.*FÅ

TagElement
tagName@author
internalRoletagsC
TextElement
internalRole	fragments
text Mike Scott*r*ká

TagElement
internalRoletags
tagName@versionG
TextElement
internalRole	fragments
text July 27, 2005*â*Å:ãä4
Modifier
internalRole	modifiers"public*û	6

SimpleName
internalRolename"ListNode*´	:µ
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*ÙX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*¸:n
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"myData*É:∑
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*¬Z

SimpleType
internalRoletype6

SimpleName
internalRolename"ListNode* :n
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"myNext*”:Œ
MethodDeclaration
constructortrue 
internalRolebodyDeclarations∆
Javadoc
internalRolejavadocõ

TagElement
internalRoletagsL
TextElement
internalRole	fragments
textdefault constructor*ÂF
TextElement
textpre: none<br>
internalRole	fragments*˝a
TextElement
internalRole	fragments0
text(post: getData() = null, getNext() = null*è:ãä4
Modifier
internalRole	modifiers"public*æ7

SimpleName
internalRolename"ListNode*≈:4æ
Block
internalRolebodyô
ConstructorInvocation
internalRole
statements1
NullLiteral
internalRole	arguments"null:u1
NullLiteral
internalRole	arguments"null:u:3_^*›:E2ﬁ
MethodDeclaration
constructortrue 
internalRolebodyDeclarations∞
Javadoc
internalRolejavadoc·

TagElement
internalRoletagsë
TextElement
internalRole	fragments`
textXcreate a ListNode that holds the specified data and refers to the specified next element*ÚF
TextElement
internalRole	fragments
textpre: none<br>*œa
TextElement
internalRole	fragments0
text(post: getData() = item, getNext() = next*·‘

TagElement
tagName@param
internalRoletags7

SimpleName
internalRole	fragments"item*ï :]
TextElement
internalRole	fragments,
text$ the  data this ListNode should hold*ô *é  

TagElement
tagName@param
internalRoletags7

SimpleName
internalRole	fragments"next*…!:S
TextElement"
text the next node in the list
internalRole	fragments*Õ!*¬!:ãä4
Modifier
internalRole	modifiers"public*Ó#7

SimpleName
internalRolename"ListNode*ı#:4‚
SingleVariableDeclaration
internalRole
parameters
varargsfalseX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*˛#:3

SimpleName
internalRolename"data*Ö#:7*˛#:6‰
SingleVariableDeclaration
internalRole
parameters
varargsfalseZ

SimpleType
internalRoletype6

SimpleName
internalRolename"ListNode*ã#:3

SimpleName
internalRolename"next*î#:7*ã#:6ò
Block
internalRolebody¯
ExpressionStatement
internalRole
statements¡

Assignment
operator=
internalRole
expression>

SimpleName
internalRoleleftHandSide"myData*ù$:É=

SimpleName
internalRolerightHandSide"data*¶$:Ñ*ù$:Ç:¯
ExpressionStatement
internalRole
statements¡

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"myNext*Æ%:É=

SimpleName
internalRolerightHandSide"next*∑%:Ñ*Æ%:Ç::3_^*Í:E2¿
MethodDeclaration 
internalRolebodyDeclarations
constructorfalseÑ
Javadoc
internalRolejavadoc¡

TagElement
internalRoletagsU
TextElement
internalRole	fragments$
textreturn the data in this node*Ã*F
TextElement
internalRole	fragments
textpre: none<br>*Ì+ï

TagElement
tagName@return
internalRoletagsV
TextElement
internalRole	fragments%
text the data this ListNode holds*Ü,*ˇ,:ãä4
Modifier
internalRole	modifiers"public*™._

SimpleType
internalRolereturnType24

SimpleName
internalRolename"Object*±.:6

SimpleName
internalRolename"getData*∏.:4ë
Block
internalRolebodym
ReturnStatement
internalRole
statements:

SimpleName
internalRole
expression"myData*Ã/::`:3_^*ƒ):E2¸
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsæ
Javadoc
internalRolejavadoc–

TagElement
internalRoletagsd
TextElement3
text+return the ListNode this ListNode refers to
internalRole	fragments*‚3F
TextElement
internalRole	fragments
textpre: none<br>*í4¿

TagElement
internalRoletags
tagName@returnÄ
TextElement
internalRole	fragmentsO
textG the ListNode this ListNode refers to (normally the next one in a list)*´5*§5:ãä4
Modifier
internalRole	modifiers"public*˘7a

SimpleType
internalRolereturnType26

SimpleName
internalRolename"ListNode*Ä	7:6

SimpleName
internalRolename"getNext*â	7:4ë
Block
internalRolebodym
ReturnStatement
internalRole
statements:

SimpleName
internalRole
expression"myNext*ù	8::`:3_^*⁄2:E2¶

MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsü
Javadoc
internalRolejavadocö

TagElement
internalRoletagsR
TextElement
internalRole	fragments!
textset the data in this node*≤	<Z
TextElement
internalRole	fragments)
text!The old data is over written.<br>*–	=F
TextElement
textpre: none<br>
internalRole	fragments*ˆ	>◊

TagElement
internalRoletags
tagName@param7

SimpleName
internalRole	fragments"data*è
?:`
TextElement/
text' the new data for this ListNode to hold
internalRole	fragments*ì
?*à
?:ãä4
Modifier
internalRole	modifiers"public*¡
A9
PrimitiveType
internalRolereturnType2"void*»
A6

SimpleName
internalRolename"setData*Õ
A:4‚
SingleVariableDeclaration
internalRole
parameters
varargsfalseX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*’
A:3

SimpleName
internalRolename"data*‹
A:7*’
A:6ù
Block
internalRolebody¯
ExpressionStatement
internalRole
statements¡

Assignment
internalRole
expression
operator=>

SimpleName
internalRoleleftHandSide"myData*Â
B:É=

SimpleName
internalRolerightHandSide"data*Ó
B:Ñ*Â
B:Ç::3_^*™	;:E2·	
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÿ
Javadoc
internalRolejavadocŒ

TagElement
internalRoletagsb
TextElement
internalRole	fragments1
text)set the next node this ListNode refers to*ÄEF
TextElement
internalRole	fragments
textpre: none<br>*ÆF‹

TagElement
internalRoletags
tagName@param7

SimpleName
internalRole	fragments"next*«G:e
TextElement
internalRole	fragments4
text, the next node this ListNode should refer to*ÀG*¿G:ãä4
Modifier
internalRole	modifiers"public*˛I9
PrimitiveType
internalRolereturnType2"void*ÖI6

SimpleName
internalRolename"setNext*äI:4‰
SingleVariableDeclaration
internalRole
parameters
varargsfalseZ

SimpleType
internalRoletype6

SimpleName
internalRolename"ListNode*íI:3

SimpleName
internalRolename"next*õI:7*íI:6ù
Block
internalRolebody¯
ExpressionStatement
internalRole
statements¡

Assignment
operator=
internalRole
expression>

SimpleName
internalRoleleftHandSide"myNext*§J:É=

SimpleName
internalRolerightHandSide"next*≠J:Ñ*§J:Ç::3_^*¯
D:E2*:E::$