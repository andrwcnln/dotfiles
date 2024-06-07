--vim.cmd('colorscheme default')
--require('plugins.gruvbox')
require('plugins.feline')
require('gitsigns').setup()
require('plugins.matlab_ls')
require('plugins.lua_ls')
require('plugins.treesitter')
require('battery').setup()
require('plugins.noice')
require('plugins.statuscol')
vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = '●',
                [vim.diagnostic.severity.WARN] = '●',
				[vim.diagnostic.severity.INFO] = '●',
				[vim.diagnostic.severity.HINT] = '●'
            }
        }
  })
--vim.api.nvim_set_hl(0,"DiagnosticUnderlineWarn",{undercurl=true,sp='DiagnosticWarn'})
