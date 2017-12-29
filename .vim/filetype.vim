augroup filetypedetect
au BufNewFile,BufRead *.va setf verilogams
au BufNewFile,BufRead *.vams setf verilogams
au BufRead,BufNewFile *.v*,*.vh*,*.sv*,*.vg     set filetype=verilog_systemverilog
au BufRead,BufNewFile *.sp,*.hsp,*.sp.* set filetype=spice
au BufRead,BufNewFile *.scs set filetype=spectre
au BufRead,BufNewFile *.ocn set filetype=ocean
au BufRead,BufNewFile *.def set filetype=c
au BufRead,BufNewFile *.lib set filetype=timing
au BufRead,BufNewFile *.aliases set filetype=tcsh
au BufRead,BufNewFile *.log setf logfile
au BufNewFile,BufRead *.udf,*.hdl setf perl
au BufNewFile,BufRead *.do,*.dofile,*.do*   setf dofile
" RELAX NG Compact Syntax
au! BufRead,BufNewFile *.rnc,*.rng setfiletype rnc
augroup END
