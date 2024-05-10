set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin()
"Plug 'morhetz/gruvbox'
Plug 'ellisonleao/gruvbox.nvim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'
"Plug 'airblade/vim-gitgutter'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x' }
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
"Plug 'romgrk/barbar.nvim'
Plug 'freddiehaddad/feline.nvim'
"Plug 'epwalsh/obsidian.nvim'
"Plug 'hrsh7th/nvim-cmp'
Plug 'neovim/nvim-lspconfig'
call plug#end()

set bg=dark
"colo gruvbox
"let g:airline_theme = 'gruvbox'
"let g:airline_powerline_fonts = 1

set noshowmode

"if exists("g:neovide")
"	set guifont=MesloLGM_Nerd_Font_Mono:h10:cANSI:qDRAFT
"endif

set updatetime=100
set signcolumn=yes

" .config/nvim/lua/init.lua
lua require('init')
