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

" have j and k navigate visual lines rather than logical ones in markdown
autocmd FileType markdown nmap <buffer> j gj
autocmd FileType markdown nmap <buffer> k gk

" use H and L for beginning/end of line
map H ^
map L $

" wrap text and split on words
set wrap
set linebreak
set nolist

set shiftwidth=4
set tabstop=4
