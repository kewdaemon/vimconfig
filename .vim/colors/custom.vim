hi clear
syntax reset

let g:colors_name = "custom"

let g:currentmode={
    \ 'n'  : 'NORMAL',
    \ 'no' : 'NORMAL,OP',
    \ 'v'  : 'VISUAL',
    \ 'V'  : 'V-LINE',
    \ '^V' : 'V-BLOCK',
    \ 's'  : 'SELECT',
    \ 'S'  : 'S-LINE',
    \ '^S' : 'S-BLOCK',
    \ 'i'  : 'INSERT',
    \ 'R'  : 'REPLACE',
    \ 'Rv' : 'V-REPLACE',
    \ 'c'  : 'COMMAND',
    \ 'cv' : 'VIM EX',
    \ 'ce' : 'EX',
    \ 'r'  : 'PROMPT',
    \ 'rm' : 'MORE',
    \ 'r?' : 'CONFIRM',
    \ '!'  : 'SHELL',
    \ 't'  : 'TERMINAL'
    \}

set laststatus=2 

set statusline+=\%#StatusLineMode# 
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=\ %#SLFilePath# 
set statusline+=\ %f
set statusline+=\ %#StatusLine# 
set statusline+=\ %m
set statusline+=\ %r
set statusline+=%=
set statusline+=\ %w
set statusline+=\ %k
set statusline+=\ %#SLFileMode# 
set statusline+=\ %Y
set statusline+=\ %#SLLineNumber# 
set statusline+=\ %l,%c
set statusline+=\ %#SLLinePercent# 
set statusline+=\ %p%% 
set statusline+=\ 

hi clear VertSplit
hi clear StatusLineNC

hi PreProc guifg=#af005f
hi LineNr guifg=#5fff5f
hi CursorLineNr guifg=#5fff5f
hi! Identifier guifg=#d75f5f
hi! Type guifg=#8787ff
hi! Statement guifg=#8700d7
highlight! CursorLineNr cterm=None
highlight! Constant ctermfg=11 guifg=Yellow cterm=italic 
highlight Normal guibg=#080808
hi! CursorLine guibg=#1c1c1c cterm=None
hi! Comment cterm=bold guifg=#d75f00
hi! FoldColumn guibg=#1c1c1c  

hi link SLFilePath LineNr
hi clear StatusLine
hi StatusLineMode guibg=#480080 guifg=#ffffff 
highlight SLFileType ctermfg=15 ctermbg=25
highlight SLFileMode ctermfg=15 cterm=bold,italic
highlight link SLLineNumber StatusLineMode
highlight SLLinePercent guibg=#2b004d guifg=#ffffff

highlight! Pmenu guibg=#480080 guifg=White cterm=bold
highlight! PmenuSel guibg=#2b004d guifg=#ffffff


"""

