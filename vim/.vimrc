" filetype + highlighting
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set cursorcolumn
set nospell
set autochdir

" disable wrapping
set nowrap

" relative line numbers
set number
set relativenumber

" colours
set termguicolors
set bg=dark
colo quiet

""" MARKDOWN
" have j and k navigate visual lines rather than logical ones
" wrap text and split on words
" turn spell check on
autocmd FileType markdown 
			\nmap <buffer> j gj|
			\nmap <buffer> k gk|
			\setlocal wrap|
			\setlocal linebreak|
			\setlocal nolist|
			\setlocal spell|
			\setlocal spelllang=en_gb|

" use H and L for beginning/end of line
map H ^
map L $

set mouse=nv

set shiftwidth=4
set tabstop=4
