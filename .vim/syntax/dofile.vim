" vim syntax file for dofile, which is Cadence conformal equivalence checker command language.
" 
"  Please let ctsai1  'chung-kuan.tsai@intel.com' know if any enhancement
" 

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syntax case match

" comments - single line
" note that the triple slash continuing line comment comes free
"syn region stataStarComment  start=/^\s*\*/ end=/$/    contains=stataComment oneline
syn region stataSlashComment start="\s//"   end=/$/    contains=stataComment oneline
syn region stataSlashComment start="^//"    end=/$/    contains=stataComment oneline
" comments - multiple line
"syn region stataComment      start="/\*"    end="\*/"  contains=stataComment

" global macros - simple case
"syn match  stataGlobal /\$\a\w*/
" global macros - general case
"syn region stataGlobal start=/\${/ end=/}/ oneline contains=@stataMacroGroup
" local macros - general case
"syn region stataLocal  start=/`/ end=/'/   oneline contains=@stataMacroGroup

" numeric formats
syn match  stataRepeat /\(-[^ ]\+[ ]\+\)*-gol\(den\)\?/
syn match  stataError   /\(-[^ ]\+[ ]\+\)*-rev\(ised\)\?/
" numeric hex format
"syn match  stataFormat /%-\=21x/
" string format
"syn match  stataFormat /%\(\|-\|\~\)\d\+s/

" Statements
"syn keyword stataConditional else if
"syn keyword stataRepeat      foreach
"syn keyword stataRepeat      forv[alues]
"syn keyword stataRepeat      while

syn match stataString "\/\?[^ \/]\+\/"
syn match stataCommand "^source "
syn match stataCommand "^map "
" Common programming commands
syn keyword stataCommand abstract
syn keyword stataCommand add
syn keyword stataCommand analyze
syn keyword stataCommand commit
syn keyword stataFormat  compare
syn keyword stataCommand delete
syn keyword stataCommand elaborate
syn keyword stataCommand exit
"syn keyword stataCommand map
syn keyword stataCommand read
syn keyword stataCommand rem[ove]
syn keyword stataCommand report
syn keyword stataCommand reset
syn keyword stataCommand save
syn keyword stataCommand set
"syn keyword stataCommand source
syn keyword stataCommand test
syn keyword stataCommand uniquify
syn keyword stataConditional tclmode
syn keyword stataConditional vpxmode
syn keyword stataRepeat write

" Literals
syn match  stataQuote   /"/



" assign highlight groups
hi def link stataBraceError	stataError
hi def link stataBracketError	stataError
hi def link stataErrInBrace	stataError
hi def link stataErrInBracket	stataError
hi def link stataErrInParen	stataError
hi def link stataEString	stataString
hi def link stataFormat		stataSpecial
hi def link stataGlobal		stataMacro
hi def link stataLocal		stataMacro
hi def link stataParenError	stataError
hi def link stataSlashComment	stataComment
hi def link stataStarComment	stataComment

hi def link stataCommand	Define
hi def link stataComment	Comment
hi def link stataConditional	Conditional
hi def link stataError		Error
hi def link stataFunc		None
hi def link stataMacro		Define
hi def link stataRepeat		Repeat
hi def link stataSpecial	SpecialChar
hi def link stataString		String

let b:current_syntax = "dofile"

" vim: ts=8
