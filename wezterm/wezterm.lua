local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'GruvboxDark'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 13.0
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 1.0
config.default_cursor_style = 'BlinkingBar'

return config
