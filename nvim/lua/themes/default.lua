-- :filter Nvim* highlight
local hex = function(n)
    return string.format("#%06x", n)
end
local fg = function(n)
    local colour = vim.api.nvim_get_hl_by_name(n, true)
    return hex(colour.foreground)
end
local bg = function(n)
    local colour = vim.api.nvim_get_hl_by_name(n, true)
    return hex(colour.background)
end

return {
    bg = bg("StatusLine"),
	black = '#000000',
    fg = fg("StatusLine"),
    green = fg("DiagnosticOk"),
    blue = fg("DiagnosticHint"),
    orange = fg("DiagnosticWarn"),
    red = fg("DiagnosticError"),
    purple = fg("DiagnosticHint"),
    white = '#FFFFFF',
    yellow = fg("DiagnosticWarn"),
	aqua = fg("DiagnosticHint")
}
