" filetype + highlighting
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set cursorcolumn
set nospell

" disable wrapping
set nowrap

" relative line numbers
set number
set relativenumber

" colours
set termguicolors
set bg=dark
colo quiet
highlight Keyword gui=bold
highlight Comment gui=italic
highlight Constant guifg=#999999
highlight NormalFloat guibg=#333333
highlight CursorLineNr guibg=NONE gui=bold

""" MARKDOWN
" have j and k navigate visual lines rather than logical ones in markdown
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

set shiftwidth=4
set tabstop=4
