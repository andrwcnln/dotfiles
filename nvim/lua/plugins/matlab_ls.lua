local coq = require("coq")
require('lspconfig').matlab_ls.setup(
    coq.lsp_ensure_capabilities({
        cmd = { "node", "/mathworks/home/aconlin/MATLAB-language-server/out/index.js", "--stdio" },
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
