-- Initialize the components table
local components = {
    active = {},
    inactive = {}
}
local config = {}
-- Insert three sections (left, mid and right) for the active statusline
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})
components.active[1][1] = {
    provider = 'vi_mode',
    hl = function()
        return {
            name = require('feline.providers.vi_mode').get_mode_highlight_name(),
            fg = require('feline.providers.vi_mode').get_mode_color(),
            style = 'bold'
        }
    end,
    right_sep = {
    str = 'right',
    hl = {
        fg = 'fg',
        bg = 'bg'
    }
    },

    -- Uncomment the next line to disable icons for this component and use the mode name instead
    icon = ''
}
components.active[1][2] = {
    provider = 'line_percentage',
    hl = {
            fg = 'blue',
    },
    left_sep = {
	str = 'vertical_bar'
    }

} 
components.active[3][1] = {
    provider = 'time'
}
local custom_providers = {
    time = function()
         return tostring(vim.fn.strftime('%c'))
    end
}
config.components = components
config.custom_providers = custom_providers
local theme = require('themes.gruvbox')
require('feline').setup(config)
require('feline').use_theme(theme)
