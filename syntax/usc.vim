"Vim syntax file
" Language: CMHC Uscript
" Maintainer: Tim Markello
" Latest Revision: 12 Feb 2015
"
if exists("b:current_syntax")
   finish
endif

syn match scriptName '\w\+ \w\+' contains=startKeywords
syn keyword startKeywords contained start end

syn match systemfunction '\$\w\+(' contains=functionSignature
syn match function '\(\w\|\-\)\+(' contains=functionSignature
syn match libraryFunction '\(\w\|\-\)\+:\w\+(' contains=functionSignature
syn keyword functionSignature contained ( )

syn keyword basicLanguageKeywords if then else endif
syn keyword basicLanguageKeywords do while enddo

syn match directive '%\w\+ \{-} \=$\='

syn match jumpLabelDef '.\{-}:$'
syn keyword jumpLanguageKeywords goback 
syn match jumpLabel '\w\+ \w\+' contains=jumpLanguageKeywords
syn keyword jumpLanguageKeywords contained goto gosub 

syn keyword variableTypes x n b i d date dst-list alpha number bin binary
syn keyword variableDef is nextgroup=variableTypes skipwhite

syn match string '\".\{-}\"'
syn match comment '\'.*$'

syn match number '\d\+'
syn match number '[-+]\d\+'

syn keyword operatorKeywords + - * / = ++ --
syn match operatorKeywords '\v\*'
syn match operatorKeywords '\v\/'
syn match operatorKeywords '\v\+'
syn match operatorKeywords '\v\-'
syn match operatorKeywords '\v\+\='
syn match operatorKeywords '\v\-\='
syn match operatorKeywords '\v\*\='
syn match operatorKeywords '\v\/\='
syn match operatorKeywords '\v\='

let b:current_syntax = "usc"

hi Start ctermfg=Red
hi Name ctermfg=blue
hi Function ctermfg=blue
hi LibFunction ctermfg=blue term=underline 
hi String ctermfg=Brown
hi Types ctermfg=blue
hi Function ctermfg=blue
hi Directive ctermfg=Magenta
hi Jump ctermfg=Green
hi JumpLabel ctermfg=LightRed
hi Operators ctermfg=Red

hi def link startKeyword            Start
hi def link scriptName              Name

hi def link systemfunction          Function
hi def link function                Function
hi def link libraryFunction         LibFunction
hi def link functionSignature       Start

hi def link variableDef             Statement
hi def link basicLanguageKeywords   Statement
hi def link operatorKeywords        Operators
hi def link variableTypes           Types

hi def link number                  Constant
hi def link comment                 Comment
hi def link string                  String
hi def link jumpLanguageKeywords    Jump
hi def link jumpLabelDef            JumpLabel
hi def link jumpLabel               JumpLabel
