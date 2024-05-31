-- Common function used by the git providers
local function git_diff(type)
    ---@diagnostic disable-next-line: undefined-field
    local b = vim.b
    local gsd = b.gitsigns_status_dict

    if gsd and gsd[type] then
        return tostring(gsd[type])
    end

    return ''
end
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
            bg = require('feline.providers.vi_mode').get_mode_color(),
	    	fg = 'bg',
            style = 'bold'
        }
    end,
    left_sep = {
	str = "block"
    },
    right_sep = {
	{ str='block' },
	{
        str = 'right_filled',
        hl = function()
            return {
                fg = require('feline.providers.vi_mode').get_mode_color(),
				bg = 'bg1'
            }
        end
	}
    },
    -- Use the name of the mode instead of the icon
    icon = ''
}
status_components.active[3][1] = {
    provider = 'battery',
	hl = {bg = 'bg3'},
    left_sep = {
		{
			str = 'left_filled',
			hl = {fg = 'bg3',bg = 'bg1'}
		},
		{str = 'block'}
    },
	right_sep = {
	str = 'block'
    }	
}
status_components.active[3][2] = {
    provider = 'date',
	hl = function()
        return {
            fg = 'fg',
	    	bg = 'bg4'
        }
	end,
    left_sep = {
		{str = 'left_filled',
		hl = function() 
			return { fg = 'bg4', bg = 'bg3' }
		end
    	},
		{
			str = 'block',
		}
	},
	right_sep = {
	str = 'block'
	}
}
status_components.active[3][3] = {
    provider = 'time',
    hl = function()
        return {
            name = (require('feline.providers.vi_mode').get_mode_highlight_name()) .. " ",
            bg = require('feline.providers.vi_mode').get_mode_color(),
	    	fg = 'bg',
            style = 'bold'
        }
    end,
    left_sep = {
        str = 'left_filled',
        hl = function()
            return {
                fg = require('feline.providers.vi_mode').get_mode_color(),
				bg = 'bg4'
            }
        end    },
	right_sep = {
	str = 'block'
	}
}
local custom_providers = {
    time = function()
		local time = tostring(vim.fn.strftime('%H:%M'))
		return '  ' .. time
    end,
    git_add = function()
        return git_diff('added'), '  '
    end,
    git_remove = function()
        return git_diff('removed'), '  '
    end,
    git_change = function()
        return git_diff('changed'), '  '
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
    end
}
status_config.components = status_components
status_config.custom_providers = custom_providers
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
	    type = 'relative',
    	}
    },
    hl = { fg = 'bg', bg = 'fg' },
    left_sep = {
        str = 'block'
    },
    right_sep = {
	{
	str = 'block'
    },
	{
	str = 'right_filled',
	hl = { bg = 'bg4' }
	}
    },
    icon = function() 
	local icon_str, icon_color = require('nvim-web-devicons').get_icon_color(
            vim.fn.expand('%:t'),
            nil, -- extension is already computed by nvim-web-devicons
            { default = true }
        )
	if vim.api.nvim_buf_get_option(0, 'filetype') == 'markdown' then
	    icon_color = 'bg'
	end
	return { str = icon_str, hl = { fg = icon_color } }
    end
}
win_components.active[1][2] = {
    provider = 'file_size',
	hl = { bg = 'bg4' },
    left_sep = 'block',
    right_sep = {
	str = 'block'
    }
}
win_components.active[1][3] = {
    provider = 'file_encoding',
	hl = { bg = 'bg4' },
    right_sep = {
	str = 'block',
	hl = { fg = 'bg4' }
    }
}
win_components.active[1][4] = {
    provider = 'file_format',
	hl = { bg = 'bg4' },
    right_sep = {
	str = 'block',
	hl = { fg = 'bg4' }
    }
}
win_components.active[1][5] = {
    provider = 'file_type',
	hl = { bg = 'bg4' },
    right_sep = {
		{
		str = 'block',
		hl = { fg = 'bg4' }
		},
		{
		str = 'right_filled',
		hl = { fg = 'bg4', bg = 'bg1' }
		}
    }
}
win_components.active[3][1] = {
    provider = 'git_add',
    hl = { fg = 'fg', bg = 'blue' },
    left_sep = 'left_rounded'
}
win_components.active[3][2] = {
    provider = 'git_remove',
    hl = { fg = 'fg', bg = 'blue' }
}
win_components.active[3][3] = {
    provider = 'git_change',
    hl = { fg = 'fg', bg = 'blue' },
    right_sep = { 'block' }
}
win_components.active[3][4] = {
    provider = 'git_branch',
    hl = { fg = 'fg', bg = 'blue' },
    right_sep = 'right_rounded'
}
win_components.active[3][5] = {
	provider = 'word_count',
	hl = { bg = 'bg3' },
	left_sep = {
		{str = 'left_filled', hl = {fg = 'bg3', bg = 'bg1'}, always_visible = true},
		{str = 'block', hl = {fg = 'bg3'}, always_visible = true}
	}
}
win_components.active[3][6] = {
    provider = {
		name = 'position',
		opts = {
			padding = {line = 3, col = 2},
			format = 'L{line} C{col}'
		}
	},
	hl = { bg = 'bg4' },
	left_sep = {
		{str = 'left_filled', hl = {fg = 'bg4', bg = 'bg3'}},
		{str = 'block', hl = {fg = 'bg4'}}
	}
}
win_components.active[3][7] = {
    provider = 'line_percentage',
	hl = { bg = 'bg4' },
    left_sep = {
	str = 'block'
    },
    right_sep = {
	str = 'block'
    }
} 
win_components.active[3][8] = {
    provider = 'scroll_bar',
	hl = { bg = 'bg4' }
}
win_config.components = win_components
require('feline').winbar.setup(win_config)
local theme = require('themes.gruvbox')
require('feline').use_theme(theme)
