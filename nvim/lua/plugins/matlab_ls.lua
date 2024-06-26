local coq = require("coq")
local util = require("lspconfig.util")
require('lspconfig').matlab_ls.setup(
    coq.lsp_ensure_capabilities({
        cmd = { "node", os.getenv("HOME") .. "/MATLAB-language-server/out/index.js", "--stdio" },
		root_dir = util.root_pattern('mw_anchor'),
        settings = {
    	    MATLAB = {
                indexWorkspace = false,
                installPath = "/usr/local/MATLAB/R2024a",
                matlabConnectionTiming = "onStart",
                telemetry = false
            }
        }
    })
)
