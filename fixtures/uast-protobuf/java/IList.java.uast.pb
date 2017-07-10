
CompilationUnit’
ImportDeclaration
internalRoleimports
onDemandfalse
staticfalse˚
QualifiedName
internalRolenameò
QualifiedName
internalRole	qualifier6

SimpleName
internalRole	qualifier"java*:1

SimpleName
internalRolename"util*::5

SimpleName
internalRolename"Iterator*::0*:/ÿû
TypeDeclaration
	interfacetrue
internalRoletypes≈
Javadoc
internalRolejavadocö

TagElement
internalRoletagsâ
TextElement
internalRole	fragmentsY
textQInterface for a simple List. Random access to all items in the list is provided. *&j
TextElement
internalRole	fragments:
text2The numbering of elements in the list begins at 0.*|:ãä4
Modifier
internalRole	modifiers"public*π3

SimpleName
internalRolename"IList* :`
TypeParameter
internalRoletypeParameters/

SimpleName
internalRolename"E*–:Ú
ParameterizedType#
internalRolesuperInterfaceTypesZ

SimpleType
internalRoletype6

SimpleName
internalRolename"Iterable*€:\

SimpleType
internalRoletypeArguments/

SimpleName
internalRolename"E*‰:
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations»
Javadoc
internalRolejavadocΩ

TagElement
internalRoletags]
TextElement
internalRole	fragments,
text$Add an item to the end of this list.*ıF
TextElement
text<br>pre: none
internalRole	fragments*ür
TextElement
internalRole	fragmentsA
text9<br>post: size() = old size() + 1, get(size() - 1) = item*≤›

TagElement
internalRoletags
tagName@param7

SimpleName
internalRole	fragments"item*¯:f
TextElement
internalRole	fragments5
text- the data to be added to the end of this list*¸*Ò:ãä9
PrimitiveType
internalRolereturnType2"void*≤2

SimpleName
internalRolename"add*∑:4›
SingleVariableDeclaration
internalRole
parameters
varargsfalseS

SimpleType
internalRoletype/

SimpleName
internalRolename"E*ª:3

SimpleName
internalRolename"item*Ω:7*ª:6*Ï
:A2£
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsª
Javadoc
internalRolejavadoc‡

TagElement
internalRoletagsl
TextElement
internalRole	fragments;
text3Insert an item at a specified position in the list.*—T
TextElement
internalRole	fragments#
text<br>pre: 0 <= pos <= size()*ä|
TextElement
internalRole	fragmentsK
textC<br>post: size() = old size() + 1, get(pos) = item, all elements in*´z
TextElement
internalRole	fragmentsI
textAthe list with a positon >= pos have a position = old position + 1*Ùﬁ

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*¬:h
TextElement7
text/ the position to insert the data at in the list
internalRole	fragments*≈*ªÃ

TagElement
internalRoletags
tagName@param7

SimpleName
internalRole	fragments"item*Å:U
TextElement
internalRole	fragments$
text the data to add to the list*Ö*˙:ãä9
PrimitiveType
internalRolereturnType2"void*©5

SimpleName
internalRolename"insert*Æ:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*µ2

SimpleName
internalRolename"pos*π:7*µ:6›
SingleVariableDeclaration
internalRole
parameters
varargsfalseS

SimpleType
internalRoletype/

SimpleName
internalRolename"E*æ:3

SimpleName
internalRolename"item*¿:7*æ:6*»:A2Ç
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations¸
Javadoc
internalRolejavadocÙ

TagElement
internalRoletagso
TextElement>
text6Change the data at the specified position in the list.
internalRole	fragments*‘c
TextElement2
text*the old data at that position is returned.
internalRole	fragments*êS
TextElement
internalRole	fragments"
text<br>pre: 0 <= pos < size()*¿^
TextElement
internalRole	fragments-
text%<br>post: get(pos) = item, return the*‡ E
TextElement
internalRole	fragments
textold get(pos)*ã!◊

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*ß":a
TextElement0
text( the position in the list to overwrite	 
internalRole	fragments*™"*†"ﬁ

TagElement
internalRoletags
tagName@param7

SimpleName
internalRole	fragments"item*ﬂ#:g
TextElement
internalRole	fragments6
text. the new item that will overwrite the old item*„#*ÿ#ü

TagElement
tagName@return
internalRoletags`
TextElement
internalRole	fragments/
text' the old data at the specified position*û	$*ó	$:ãäZ

SimpleType
internalRolereturnType2/

SimpleName
internalRolename"E*Œ	&:2

SimpleName
internalRolename"set*–	&:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*‘	&2

SimpleName
internalRolename"pos*ÿ	&:7*‘	&:6›
SingleVariableDeclaration
internalRole
parameters
varargsfalseS

SimpleType
internalRoletype/

SimpleName
internalRolename"E*›	&:3

SimpleName
internalRolename"item*ﬂ	&:7*›	&:6*À:A2˘
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations”
Javadoc
internalRolejavadoc™

TagElement
internalRoletagsV
TextElement
internalRole	fragments%
textGet an element from the list.*Û	)S
TextElement
internalRole	fragments"
text<br>pre: 0 <= pos < size()*ñ
*Y
TextElement(
text <br>post: return the item at pos
internalRole	fragments*∂
+Œ

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*„
,:X
TextElement
internalRole	fragments'
text specifies which element to get*Ê
,*‹
,™

TagElement
internalRoletags
tagName@returnk
TextElement
internalRole	fragments:
text2 the element at the specified position in the list*í-*ã-:ãäZ

SimpleType
internalRolereturnType2/

SimpleName
internalRolename"E*Õ/:2

SimpleName
internalRolename"get*œ/:4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*”/2

SimpleName
internalRolename"pos*◊/:7*”/:6*Í	(:A2î

MethodDeclaration 
internalRolebodyDeclarations
constructorfalseÎ
Javadoc
internalRolejavadoc∆

TagElement
internalRoletagsi
TextElement
internalRole	fragments8
text0Remove an element in the list based on position.*Ï3S
TextElement"
text<br>pre: 0 <= pos < size()
internalRole	fragments*¢4k
TextElement
internalRole	fragments:
text2<br>post: size() = old size() - 1, all elements of*¬5u
TextElementD
text<list with a positon > pos have a position = old position - 1
internalRole	fragments*˙6„

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*√7:m
TextElement
internalRole	fragments<
text4 the position of the element to remove from the list*∆7*º7ë

TagElement
internalRoletags
tagName@returnR
TextElement
internalRole	fragments!
text the data at position pos*á8*Ä8:ãäZ

SimpleType
internalRolereturnType2/

SimpleName
internalRolename"E*©::5

SimpleName
internalRolename"remove*´::4∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*≤:2

SimpleName
internalRolename"pos*∂::7*≤::6*„2:A2à
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations€
Javadoc
internalRolejavadocÅ

TagElement
internalRoletagsi
TextElement8
text0Remove the first occurrence of obj in this list.
internalRole	fragments* =ñ
TextElement
internalRole	fragmentse
text]Return <tt>true</tt> if this list changed as a result of this call, <tt>false</tt> otherwise.*Ä>F
TextElement
text<br>pre: none
internalRole	fragments*„?ú
TextElement
internalRole	fragmentsk
textc<br>post: if obj is in this list the first occurence has been removed and size() = old size() - 1. *ˆ@r
TextElementA
text9If obj is not present the list is not altered in any way.
internalRole	fragments*ﬂA“

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"obj*•B:\
TextElement
internalRole	fragments+
text# The item to remove from this list.*®B*ûB◊

TagElement
internalRoletags
tagName@returnó
TextElement
internalRole	fragmentsf
text^ Return <tt>true</tt> if this list changed as a result of this call, <tt>false</tt> otherwise.*ÿC*—C:ãä<
PrimitiveType
internalRolereturnType2"boolean*øE5

SimpleName
internalRolename"remove*«E:4‹
SingleVariableDeclaration
internalRole
parameters
varargsfalseS

SimpleType
internalRoletype/

SimpleName
internalRolename"E*ŒE:2

SimpleName
internalRolename"obj*–E:7*ŒE:6*¡<:A2ò
MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsù
Javadoc
internalRolejavadoc‚

TagElement
internalRoletagsú
TextElement
internalRole	fragmentsk
textcReturn a sublist of elements in this list from <tt>start</tt> inclusive to <tt>stop</tt> exclusive.*‰Hk
TextElement:
text2This list is not changed as a result of this call.
internalRole	fragments*ÕIw
TextElement
internalRole	fragmentsF
text><br>pre: <tt>0 <= start < size(), start <= stop <= size()</tt>*ÖJ∏
TextElement
internalRole	fragmentsÜ
text~<br>post: return a list whose size is stop - start and contains the elements at positions start through stop - 1 in this list.*…K‹

TagElement
internalRoletags
tagName@param8

SimpleName
internalRole	fragments"start*‘L:d
TextElement
internalRole	fragments3
text+ index of the first element of the sublist.*ŸL*ÕLÍ

TagElement
tagName@param
internalRoletags7

SimpleName
internalRole	fragments"stop*ëM:s
TextElementB
text: stop - 1 is the index of the last element of the sublist.
internalRole	fragments*ïM*äM¡

TagElement
internalRoletags
tagName@return°
TextElement
internalRole	fragmentsp
texth a list with <tt>stop - start</tt> elements, The elements are from positions <tt>start</tt> inclusive to*‹N^
TextElement-
text%<tt>stop</tt> exclusive in this list.
internalRole	fragments* O*’N:ãäÁ
ParameterizedType
internalRolereturnType2W

SimpleType
internalRoletype3

SimpleName
internalRolename"IList*¯Q:\

SimpleType
internalRoletypeArguments/

SimpleName
internalRolename"E*˛Q:9

SimpleName
internalRolename"
getSubList*ÅQ:4º
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*åQ4

SimpleName
internalRolename"start*êQ:7*åQ:6ª
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*óQ3

SimpleName
internalRolename"stop*õQ:7*óQ:6*€G:A2Ú
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations™
Javadoc
internalRolejavadoc„

TagElement
internalRoletagsä
TextElement
internalRole	fragmentsY
textQReturn the size of this list. In other words the number of elements in this list.*ØTF
TextElement
text<br>pre: none
internalRole	fragments*ÜUj
TextElement
internalRole	fragments9
text1<br>post: return the number of items in this list*ôVô

TagElement
internalRoletags
tagName@returnZ
TextElement
internalRole	fragments)
text! the number of items in this list*◊W*–W:ãä8
PrimitiveType
internalRolereturnType2"int*ÅY3

SimpleName
internalRolename"size*ÖY:4*¶S:A2û

MethodDeclaration
constructorfalse 
internalRolebodyDeclarationsÛ
Javadoc
internalRolejavadoc†

TagElement
internalRoletagse
TextElement
internalRole	fragments4
text,Find the position of an element in the list.*ö\F
TextElement
internalRole	fragments
text<br>pre: none*Ã]v
TextElement
internalRole	fragmentsE
text=<br>post: return the index of the first element equal to item*ﬂ^U
TextElement$
textor -1 if item is not present
internalRole	fragments*¢_÷

TagElement
tagName@param
internalRoletags7

SimpleName
internalRole	fragments"item*À`:_
TextElement
internalRole	fragments.
text& the element to search for in the list*œ`*ƒ`Ã

TagElement
internalRoletags
tagName@returnå
TextElement
internalRole	fragments[
textS return the index of the first element equal to item or a -1 if item is not present*Ça*˚a:ãä8
PrimitiveType
internalRolereturnType2"int*ﬁc6

SimpleName
internalRolename"indexOf*‚c:4›
SingleVariableDeclaration
internalRole
parameters
varargsfalseS

SimpleType
internalRoletype/

SimpleName
internalRolename"E*Íc:3

SimpleName
internalRolename"item*Ïc:7*Íc:6*ë[:A2‚
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations˙	
Javadoc
internalRolejavadoc˘

TagElement
internalRoletagsÜ
TextElement
internalRole	fragmentsU
textMfind the position of an element in the list starting at a specified position.*ÄfS
TextElement
internalRole	fragments"
text<br>pre: 0 <= pos < size()*”gÜ
TextElement
internalRole	fragmentsU
textM<br>post: return the index of the first element equal to item starting at pos*Ûhn
TextElement
internalRole	fragments=
text5or -1 if item is not present from position pos onward*∆i÷

TagElement
tagName@param
internalRoletags7

SimpleName
internalRole	fragments"item*àj:_
TextElement
internalRole	fragments.
text& the element to search for in the list*åj*Åj‡

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*øk:j
TextElement
internalRole	fragments9
text1 the position in the list to start searching from*¬k*∏kó

TagElement
internalRoletags
tagName@return◊
TextElement
internalRole	fragments•
textú starting from the specified position return the index of the first element equal to item or a -1 if item is not present between pos and the end of the list*Ä l*˘l:ãä8
PrimitiveType
internalRolereturnType2"int*•!n6

SimpleName
internalRolename"indexOf*©!n:4›
SingleVariableDeclaration
internalRole
parameters
varargsfalseS

SimpleType
internalRoletype/

SimpleName
internalRolename"E*±!n:3

SimpleName
internalRolename"item*≥!n:7*±!n:6∫
SingleVariableDeclaration
internalRole
parameters
varargsfalse1
PrimitiveType
internalRoletype"int*π!n2

SimpleName
internalRolename"pos*Ω!n:7*π!n:6*˜e:A2è
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations¡
Javadoc
internalRolejavadocñ

TagElement
internalRoletags[
TextElement
internalRole	fragments*
text"return the list to an empty state.*–!qF
TextElement
internalRole	fragments
text<br>pre: none*¯!rM
TextElement
internalRole	fragments
text<br>post: size() = 0*ã"s:ãä9
PrimitiveType
internalRolereturnType2"void*®"u8

SimpleName
internalRolename"	makeEmpty*≠"u:4*«!p:A2‹
MethodDeclaration 
internalRolebodyDeclarations
constructorfalse›
Javadoc
internalRolejavadoc≤

TagElement
internalRoletagsZ
TextElement)
text!return an Iterator for this list.
internalRole	fragments*∆"xF
TextElement
internalRole	fragments
text<br>pre: none*Ï"yj
TextElement
internalRole	fragments9
text1<br>post: return an Iterator object for this List*˛"z:ãäÍ
ParameterizedType
internalRolereturnType2Z

SimpleType
internalRoletype6

SimpleName
internalRolename"Iterator*∫#|:\

SimpleType
internalRoletypeArguments/

SimpleName
internalRolename"E*√#|:7

SimpleName
internalRolename"iterator*∆#|:4*æ"w:A2ó
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations¬
Javadoc
internalRolejavadoc•

TagElement
internalRoletagsì
TextElementb
textZRemove all elements in this list from <tt>start</tt> inclusive to <tt>stop</tt> exclusive.
internalRole	fragments*Â#x
TextElement
internalRole	fragmentsF
text><br>pre: <tt>0 <= start < size(), start <= stop <= size()</tt>*»$Äq
TextElement
internalRole	fragments?
text7<br>post: <tt>size() = old size() - (stop - start)</tt>*è%ÅÌ

TagElement
tagName@param
internalRoletags9

SimpleName
internalRole	fragments"start*÷%Ç:s
TextElement
internalRole	fragmentsA
text9 position at beginning of range of elements to be removed*€%Ç*œ%Çˇ

TagElement
internalRoletags
tagName@param8

SimpleName
internalRole	fragments"stop*§&É:Ö
TextElement
internalRole	fragmentsS
textK stop - 1 is the position at the end of the range of elements to be removed*®&É*ù&É:ãä:
PrimitiveType
internalRolereturnType2"void*Ç'Ö;

SimpleName
internalRolename"removeRange*á'Ö:4ø
SingleVariableDeclaration
internalRole
parameters
varargsfalse2
PrimitiveType
internalRoletype"int*ì'Ö5

SimpleName
internalRolename"start*ó'Ö:7*ì'Ö:6æ
SingleVariableDeclaration
internalRole
parameters
varargsfalse2
PrimitiveType
internalRoletype"int*û'Ö4

SimpleName
internalRolename"stop*¢'Ö:7*û'Ö:6*Ÿ#~:A2è
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations‚
Javadoc
internalRolejavadocî

TagElement
internalRoletagsj
TextElement
internalRole	fragments8
text0Return a String version of this list enclosed in*¿'à^
TextElement
internalRole	fragments,
text$square brackets, []. Elements are in*˘'â`
TextElement
internalRole	fragments.
text&are in order based on position in the *¶(äU
TextElement
internalRole	fragments#
textlist with the first element*’(ãk
TextElement9
text1first. Adjacent elements are seperated by comma's
internalRole	fragments*˘(å†

TagElement
internalRoletags
tagName@return`
TextElement
internalRole	fragments.
text& a String representation of this IList*∫)ç*≥)ç:ãä5
Modifier
internalRole	modifiers"public*Ô)è`

SimpleType
internalRolereturnType25

SimpleName
internalRolename"String*ˆ)è:8

SimpleName
internalRolename"toString*˝)è:4*¥'á:E2ó
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations¶
Javadoc
internalRolejavadoc»

TagElement
internalRoletagsh
TextElement
internalRole	fragments6
text.Determine if this IList is equal to other. Two*†*íl
TextElement
internalRole	fragments:
text2ILists are equal if they contain the same elements*◊*ìL
TextElement
internalRole	fragments
textin the same order.*í+î∞

TagElement
internalRoletags
tagName@returnp
TextElement
internalRole	fragments>
text6 true if this IList is equal to other, false otherwise*¥+ï*≠+ï:ãä5
Modifier
internalRole	modifiers"public*˘+ó=
PrimitiveType
internalRolereturnType2"boolean*Ä,ó6

SimpleName
internalRolename"equals*à,ó:4Ê
SingleVariableDeclaration
internalRole
parameters
varargsfalseY

SimpleType
internalRoletype5

SimpleName
internalRolename"Object*è,ó:5

SimpleName
internalRolename"other*ñ,ó:7*è,ó:6*î*ë:E2*:E::$