syntax on
colors delek
set background=dark
map <S-F11> :let &background = ( &background == "dark"? "light" : "dark")<CR>
set bs=2
"set number
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

set incsearch
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
