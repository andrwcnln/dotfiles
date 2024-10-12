local M = {}

M.modeMap = {
	n = "NORMAL", i = "INSERT", R = "REPLACE", v = "VISUAL", V = "V-LINE", [''] = "V-BLOCK",
	c = "COMMAND", s = "SELECT", S = "S-LINE", [''] = "S-BLOCK", nt = "NORMAL", t = "TERMINAL"
}

GetMode = function()
	local m = vim.api.nvim_get_mode().mode
	if M.modeMap[m] ~= nil then
		return M.modeMap[m] .. " "
	else
		return ""
	end
end

GetDate = function()
	return tostring(vim.fn.strftime('%Y-%m-%d'))
end

GetTime = function()
	local time = tostring(vim.fn.strftime('%H:%M:%S'))
	return time
end

GetLSP = function()
	local clients = vim.lsp.buf_get_clients()
	if next(clients) ~= nil then
		local name = string.format('%s',clients[1].name)
		local root = clients[1].root_dir
		if name == 'matlab_ls' and root ~= nil then
			local sandbox = root:match(".+/([^/]+)$")
			--local handle = io.popen('p4 opened | grep tnrCRCDecode | sed \'s/^[^#]*//g\'')
			--local result = handle:read("*a")
			return string.format('| %s -> %s ',name,sandbox)
		else
			return "| " .. name .. " "
		end
	else
		return ''
	end
end

GetGitStatus = function()
	local signs = vim.b.gitsigns_status_dict or {head = '', added = 0, changed = 0, removed = 0}
	local inRepo = signs.head ~= ''

	return inRepo and string.format(
	    '| %s: +%s ~%s -%s ',
    	signs.head, signs.added, signs.changed, signs.removed
  		) or ''
end

function M.statusline()
	local sline = " "
	sline = sline .. GetMode() .. GetGitStatus() .. GetLSP() .. "%=" .. GetDate() .. " | " .. GetTime() .. " "
	return sline
end

function M.winbar()
	return "%< %f %y%h%m%r%=%-5.(L%l C%c%V%) %P "
end

local timer = vim.uv.new_timer()
timer:start(0, 10000, vim.schedule_wrap(function()
    vim.cmd("let &stl=&stl")
end))

return M
