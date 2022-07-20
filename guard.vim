" Vim syntax file
" Language: AWS CloudFormation Guard Rules
" Maintainer: Eric Beard
" Latest Revision: 2022-07-19

if exists("b:current_syntax")
  finish
endif

syn keyword guardKeyword let rule when 
syn keyword guardType Resources Type Properties Metadata
syn keyword guardUnary exists empty is_string is_list is_struct not

syn region guardRule start="{" end="}" fold transparent
syn match guardComment "#.*$" 
syn match guardString /\'.*\'/

let b:current_syntax = "guard"

hi def link guardTodo        Todo
hi def link guardComment     Comment
hi def link guardKeyword     Statement
hi def link guardType        Type
hi def link guardString      Constant
hi def link guardDesc        PreProc
hi def link guardUnary       PreProc
hi def link guardNumber      Constant

