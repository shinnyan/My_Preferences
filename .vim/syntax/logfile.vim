" Vim syntax file
" Language:	logfile for Noble run logs
" Maintainer:	Shihpeng Tan
" Last Update:  23 Nov 2012
" Version: 1.1

" Description:	Reference from http://vim.wikia.com/wiki/Creating_your_own_syntax_files 
" 

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif


" Read in Verilog syntax files
"if version < 600
"   so syntax/logfile.vim
"else
"   runtime! syntax/logfile.vim
"endif
"

"##########################################################
"       logfile Syntax
"##########################################################

syn match	logfileComment	"^#.*$"

syn match	logfileBasename	"[a-z0-9A-Z._]*" nextgroup=logfileSwitch skipwhite contained
syn region	logfileSwitch	start='-' end=' ' contained

syn match	logfilePath	"/\=[a-zA-Z0-9._/]*/" nextgroup=logfileBasename skipwhite
syn match	logfileInfo	"^-[DIW]-"
syn match	logfileError	"^-[EF]-.\{-}:"


let b:current_syntax = "logfile"

hi def link logfileComment	Comment
hi def link logfilePath		Identifier
hi def link logfileSwitch	Identifier
hi def link logfileBasename  	Identifier
hi def link logfileInfo		Statement
hi def link logfileError	ErrorMsg
