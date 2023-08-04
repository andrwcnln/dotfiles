filetype on
filetype plugin on
filetype indent on

syntax on

set number

set cursorline
set cursorcolumn

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme gruvbox
set bg=dark
