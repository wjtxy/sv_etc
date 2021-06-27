" theme *********************************************************************

"colorscheme darkblue
set background=dark
colorscheme palenight
hi Normal  guibg=NONE guibg=NONE
hi LineNr  guibg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" statusline *************************************************************
set statusline=%1*\%.40F\          "显示文件名和文件路径
set statusline+=%=%2*\ %y%m%r%h%w\%*        "显示文件类型及文件状态
set statusline+=%3*\ %{&ff}\[%{&fenc}]\%*   "显示文件编码类型
"set statusline+=%4*\ row:%l/%L,col:%c\%*   "显示光标所在行和列
set statusline+=%4*\ %L/col:%c\%*   "显示光标所在行和列
set statusline+=%5*\%3p%%\%*            "显示光标前文本所占总文本的比例
set statusline+=%6*\ %{gutentags#statusline('[',']')}\%*

set termguicolors
hi User1 gui=none guifg=red guibg=none
hi User2 gui=none guifg=yellow guibg=none
hi User3 gui=none guifg=blue guibg=none
hi User4 gui=none guifg=pink guibg=none
hi User5 gui=none guifg=0 guibg=none
hi User6 gui=none guifg=green guibg=none
