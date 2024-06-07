local coq = require("coq")
local util = require("lspconfig.util")
require('lspconfig').lua_ls.setup(
    coq.lsp_ensure_capabilities({
        cmd = { os.getenv("HOME") .. "/lua-language-server/bin/lua-language-server" },
		root_dir = util.root_pattern('init.lua'),
    })
)
