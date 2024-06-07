local builtin = require("statuscol.builtin")
require('statuscol').setup({
       relculright = true,
	   ft_ignore = { 'neo-tree' },
       segments = {
         {
           sign = { namespace={'diag*'} },
		   click = "v:lua.ScSa"
         },
         { text = { builtin.lnumfunc }, click = "v:lua.ScLa", },
         {
           sign = { namespace={'git*'} },
		   click = "v:lua.ScSa"
         },
       }
})
