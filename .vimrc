" filetype + highlighting
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set relativenumber
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
Plug 'ghifarit53/tokyonight-vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

" colours
set bg=dark
set termguicolors
colorscheme tokyonight

" backspace fix on windows
set nocompatible
set backspace=indent,eol,start

" wrap text and split on words
set wrap
set linebreak
set nolist

" don't show mode as it is shown in airline
set noshowmode

" airline fonts
let g:airline_powerline_fonts = 0

" have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

" use H and L for beginning/end of line
nmap H ^
nmap L $

" yank to system clipboard
set clipboard=unnamed

" vim-gitgutter
set updatetime=100
set signcolumn=yes
