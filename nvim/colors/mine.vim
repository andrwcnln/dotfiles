" load the quiet colorscheme
runtime colors/quiet.vim
let g:colors_name = 'mine'

" adjust
if &background ==# 'light'
	highlight Normal guibg=#FFFFFF
	highlight Special guifg=#666666
	highlight NormalFloat guibg=#333333
endif

highlight Title gui=bold
highlight Special gui=bold
highlight SpellBad guibg=Normal guifg=Normal gui=undercurl guisp=red
highlight SpellCap guibg=Normal guifg=Normal gui=undercurl guisp=blue
highlight SpellLocal guibg=Normal guifg=Normal gui=undercurl guisp=pink
highlight SpellRare guibg=Normal guifg=Normal gui=undercurl guisp=aqua
highlight Keyword gui=bold
highlight Comment gui=italic
highlight Constant guifg=#999999
highlight NormalFloat guibg=#666666
highlight CursorLineNr guibg=NONE gui=bold
highlight StatusLine guibg=Normal guifg=Normal
