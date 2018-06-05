"trailing whitespace
highlight ws ctermbg=red guibg=red
match ws /\s\+$/
autocmd BufWinEnter * match ws / \+$/
set listchars=trail:.
set list

syntax on
"colors delek
"set background=dark
"map <S-F11> :let &background = ( &background == "dark"? "light" : "dark")<CR>
" need this to override gnome-terminal color scheme
set t_Co=256
color iceberg
set bs=2
"set number
set incsearch
set hlsearch
:noremap <S-f10> :set hlsearch!<CR>

" Change tab to spaces
:set expandtab
set tabstop=4
" set autoindent
:set ignorecase
:set smartcase
set scrolloff=2
set wim=full
:noremap <S-f12> :set wrap!<CR>
" turn on horizontal scroll bar for GUI
" set guioptions=b
" set folding for foldmethod
" set 1 column to display fold
"set foldcolumn=1

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
:hi search ctermfg=red ctermbg=blue
:filetype plugin on

"background set to dark
highlight Normal guifg=cyan guibg=black
if has ('gui_running')
  set guifont=Monospace\ 12
endif

"highlight current line
if exists('+cursorline')
  set cursorline
  hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
endif

if &diff
    colorscheme evening
endif

" automatic add closing curly bracket
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"lower case scroll right half page
map zl zL
"lowercase scroll left half page
map zh zH

" tab is indent in normal mode
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>
" comment/uncomment in visual mode
vmap _c :s/^\(\s*\)/\1#/gi<Enter>
vmap _C :s/^(\s*\)#/\1/gi<Enter>

