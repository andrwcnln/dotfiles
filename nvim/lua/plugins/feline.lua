-- Initialize the status_components table
local status_components = {
	active = {},
	inactive = {}
}
local status_config = {}
-- Insert three sections (left, mid and right) for the active statusline
table.insert(status_components.active, {})
table.insert(status_components.active, {})
table.insert(status_components.active, {})
status_components.active[1][1] = {
    provider = 'vi_mode',
    hl = function()
    	return {
    		name = (require('feline.providers.vi_mode').get_mode_highlight_name()),
    		fg = 'fg',
    		style = 'bold'
    	}
    end,
	left_sep = { str = 'block' },
	-- Use the name of the mode instead of the icon
	icon = ''
}
status_components.active[1][2] = {
	provider = 'git_branch',
	left_sep = 'block',
	icon = ''
}
status_components.active[1][3] = {
	provider = 'lsp_client',
	left_sep = 'block',
	icon = '',
	update = {'WinClosed','BufDelete'}
}
status_components.active[3][1] = {
	provider = 'battery',
}
status_components.active[3][2] = {
	provider = 'date',
	right_sep = { str = 'block' },
	left_sep = { str = 'block' }
}
status_components.active[3][3] = {
	provider = 'time',
	right_sep = { str = 'block' }
}
local custom_providers = {
	time = function()
		local time = tostring(vim.fn.strftime('%H:%M'))
		--return ' ' .. time
		return time
	end,
	word_count = function()
		if vim.api.nvim_buf_get_option(0, 'filetype') == 'markdown' then
			return vim.fn.wordcount().words .. 'W '
		else
			return ""
		end
	end,
	date = function()
		return tostring(vim.fn.strftime('%Y-%m-%d'))
	end,
	battery = function()
		return require('battery').get_status_line()
	end,
	lsp_client = function()
		local clients = vim.lsp.buf_get_clients()
		if next(clients) ~= nil then
			local name = string.format('%s',clients[1].name)
			--if name == 'matlab_ls' then
		--		local root = clients[1].root_dir
		--		local sandbox = root:match(".+/([^/]+)$")
		--		local handle = io.popen('p4 opened | grep tnrCRCDecode | sed \'s/^[^#]*//g\'')
		--		local result = handle:read("*a")
		--		return string.format('%s -> %s%s',name,result,sandbox)
			--else
			return name
			--end
		else
			return ''
		end
	end
}
status_config.components = status_components
status_config.custom_providers = custom_providers
status_config.highlight_reset_triggers = {'ColorScheme'}
require('feline').setup(status_config)
-- Initialize the win_components table
local win_components = {
	active = {},
	inactive = {}
}
local win_config = {}
-- Insert three sections (left, mid and right) for the active winbar
table.insert(win_components.active, {})
table.insert(win_components.active, {})
table.insert(win_components.active, {})
win_components.active[1][1] = {
	provider = {
		name = 'file_info',
		opts = {
			type = 'unique'
		}
	},
	icon = '',
	left_sep = 'block'
}
win_components.active[1][2] = {
	provider = 'file_size',
	left_sep = 'block',
	right_sep = {
		str = 'block'
	}
}
win_components.active[1][3] = {
	provider = 'file_encoding',
	right_sep = {
		str = 'block'
	}
}
win_components.active[1][4] = {
	provider = 'file_format',
	right_sep = {
		str = 'block'
	}
}
win_components.active[1][5] = {
	provider = 'file_type',
	right_sep = { str = 'block' }
}
win_components.active[3][1] = {
	provider = 'word_count',
	left_sep = { str = 'block' }
}
win_components.active[3][2] = {
	provider = {
		name = 'position',
		opts = {
			padding = { line = 3, col = 2 },
			format = 'L{line} C{col}'
		}
	},
	left_sep = { str = 'block' }
}
win_components.active[3][3] = {
	provider = 'line_percentage',
	left_sep = {
		str = 'block'
	},
	right_sep = {
		str = 'block'
	}
}
win_components.active[3][4] = {
	provider = 'scroll_bar'
}
win_config.components = win_components
win_config.disable = { filetypes = { '^neo[-]tree$' } }
require('feline').winbar.setup(win_config)
local theme = require('themes.default')
require('feline').use_theme(theme)
