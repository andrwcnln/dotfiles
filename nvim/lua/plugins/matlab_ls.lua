local coq = require("coq")
local util = require("lspconfig.util")
require('lspconfig').matlab_ls.setup(
    coq.lsp_ensure_capabilities({
        cmd = { "node", os.getenv("HOME") .. "/MATLAB-language-server/out/index.js", "--stdio" },
		root_dir = util.root_pattern('mw_anchor'),
		single_file_support = true,
        settings = {
    	    MATLAB = {
                indexWorkspace = false,
                installPath = "/usr/local/MATLAB/R2024b",
                matlabConnectionTiming = "onStart",
                telemetry = false
            }
        }
    })
)
