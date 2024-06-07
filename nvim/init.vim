set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin()
"Plug 'morhetz/gruvbox'
Plug 'ellisonleao/gruvbox.nvim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ghifarit53/tokyonight-vim'
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
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'rafamadriz/friendly-snippets'
"Plug 'mathworks/MATLAB-extension-for-vscode'
" main one
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'xiyaowong/transparent.nvim'
Plug 'justinhj/battery.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'folke/noice.nvim'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'luukvbaal/statuscol.nvim'
"Plug 'linrongbin16/lsp-progress.nvim'
call plug#end()

set bg=dark
colo default
"let g:airline_theme = 'gruvbox'
"let g:airline_powerline_fonts = 1

set noshowmode

if exists("g:neovide")
	set guifont=GeistMono_Nerd_Font:h10:cANSI:qDRAFT
endif

"set updatetime=100
"set signcolumn=yes:1
"let &stc='%s%=%{v:relnum?v:relnum:v:lnum} '

set laststatus=3
set spell

" .config/nvim/lua/init.lua
lua require('init')
