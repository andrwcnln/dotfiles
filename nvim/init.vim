set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin()
" Plug 'ellisonleao/gruvbox.nvim'
" Plug 'folke/tokyonight.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
"Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x' }
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
" Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
" Plug 'freddiehaddad/feline.nvim'
Plug 'neovim/nvim-lspconfig'
" main one
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'xiyaowong/transparent.nvim'
Plug 'justinhj/battery.nvim'
Plug 'MunifTanjim/nui.nvim'
" Plug 'rcarriga/nvim-notify'
Plug 'folke/noice.nvim'
Plug 'luukvbaal/statuscol.nvim'
call plug#end()

if exists("g:neovide")
	set guifont=JetBrains_Mono:h13:cANSI:qDRAFT
endif

colo mine
set noshowmode
set laststatus=2
set cmdheight=0

set statusline=%{%v:lua.require('plugins.statusline').statusline()%}
set winbar=%{%v:lua.require('plugins.statusline').winbar()%}

" .config/nvim/lua/init.lua
lua require('init')
