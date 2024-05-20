" filetype + highlighting
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set cursorcolumn

" relative line numbers
set number
set relativenumber

" colours
set termguicolors
colo tokyonight

" have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

" use H and L for beginning/end of line
nmap H ^
nmap L $

" wrap text and split on words
set wrap
set linebreak
set nolist

set shiftwidth=4
set tabstop=4
