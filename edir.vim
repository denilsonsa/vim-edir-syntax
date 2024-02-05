" Vim syntax file
" Language: edir
" Maintainer: Denilson Sá Maia
" Previous Maintainer: Rayhan Alghiffari Azizi
" Last Change: 05 February 2024

if exists("b:current_syntax")
  finish
endif

syn match comment    '^\s*#.*'
syn match fileNumber '^\d\+'      nextgroup=currDir,dirName,fileName skipwhite
syn match currDir    '\./'        nextgroup=dirName,fileName contained
syn match dirName    '.\+/'       nextgroup=fileName contained
syn match fileName   '[^/]*$'     contains=fileExt contained
syn match fileExt    '\.[^/.]\+$' contained

hi def link comment    Comment
hi def link fileNumber Label
hi def link currDir    Comment
hi def link dirName    Function
hi def link fileExt    Type

let b:current_syntax = "edir"
