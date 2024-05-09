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
    black = '#000000',
    fg = colo("GruvboxFg0"),
    green = colo("GruvboxGreen"),
    blue = colo("GruvboxBlue"),
    orange = colo("GruvboxOrange"),
    red = colo("GruvboxRed"),
    purple = colo("GruvboxPurple"),
    white = '#FFFFFF',
    yellow = colo("GruvboxYellow") 
}
