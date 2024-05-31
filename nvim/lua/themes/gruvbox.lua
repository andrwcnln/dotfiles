-- :filter Gruvbox* highlight
local hex = function(n)
    return string.format("#%06x", n)
end
local colo = function(n)
    colour = vim.api.nvim_get_hl_by_name(n, true)
    return hex(colour.foreground)
end
return {
    bg = colo("GruvboxBg0"),
	bg1 = colo("GruvboxBg1"),
	bg2 = colo("GruvboxBg2"),
	bg3 = colo("GruvboxBg3"),
	bg4 = colo("GruvboxBg4"),
    black = '#000000',
    fg = colo("GruvboxFg0"),
	fg1 = colo("GruvboxFg1"),
	fg2 = colo("GruvboxFg2"),
	fg3 = colo("GruvboxFg3"),
	fg4 = colo("GruvboxFg4"),
    green = colo("GruvboxGreen"),
    blue = colo("GruvboxBlue"),
    orange = colo("GruvboxOrange"),
    red = colo("GruvboxRed"),
    purple = colo("GruvboxPurple"),
    white = '#FFFFFF',
    yellow = colo("GruvboxYellow"),
	aqua = colo("GruvboxAqua")
}
