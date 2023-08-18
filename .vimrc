" filetype + highlighting
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set cursorcolumn

" wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" plugins
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

" colours
colorscheme gruvbox
set bg=dark
set termguicolors

" backspace fix on windows
set nocompatible
set backspace=indent,eol,start

" wrap text and split on words
set wrap
set linebreak
set nolist

" don't show mode as it is shown in airline
set noshowmode
