" Vim syntax file
" Language: edir
" Maintainer: Denilson Sá Maia
" Previous Maintainer: Rayhan Alghiffari Azizi
" Last Change: 05 February 2024

if exists("b:current_syntax")
  finish
endif

syn match comment       '^\s*#.*$'

syn match fileNumber    '^\s*\d\+'   nextgroup=whiteSpace
syn match whiteSpace    '[ \t]\+'    contained nextgroup=currDir
syn match currDir       '\(\./\)\?'  contained nextgroup=dirName,fileName
syn match dirName       '.\+/'       contained nextgroup=fileName
syn match fileName      '[^/]*$'     contained contains=fileExt,trailingSpace
syn match fileExt       '\.[^/.]\+$' contained contains=trailingSpace
syn match trailingSpace '\s\+$'      contained

syn match errorMissingNumber '^\s*[^#0-9 \t].*$'
syn match errorBadNumber     '^\s*[0-9]\+[^ \t0-9].*$'

hi def link comment    Comment
hi def link fileNumber Label
hi def link currDir    Special
hi def link dirName    Function
hi def link fileExt    Type

hi def link trailingSpace      Error
hi def link errorMissingNumber Error
hi def link errorBadNumber     Error

let b:current_syntax = "edir"
