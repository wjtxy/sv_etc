
nnoremap <F2> :set nonumber<cr>
nnoremap q :q<cr>
nnoremap X :q<cr>
map <c-]> g<c-]>
map J j

nnoremap gw <c-w>w
nnoremap gs :split<cr>
nnoremap gv :vsplit<cr>
nnoremap <c-t> :%s/<C-R>=expand("<cword>")<cr>//g<left><left>
vnoremap <c-t> y:%s/<C-R>"//g<left><left>

nnoremap zo A{<esc>o}<esc>O
nnoremap zi A{<esc>o};<esc>O
nnoremap z; A;<esc>
inoremap z; <esc>A;<esc>
vnoremap z( s()<esc><left>p
vnoremap z' s''<esc><left>p
vnoremap z" s""<esc><left>p

" 显示c函数
nnoremap ff :call ShowFuncName() <CR>
nnoremap fh :!<space>/home/sv/sv_etc/ctags_highlight_c.sh<cr><cr>

nnoremap <c-k> 4k
nnoremap <c-j> 4j
nnoremap <c-h> 8h
nnoremap <c-l> 8l
vnoremap <c-k> 4k
vnoremap <c-j> 4j
vnoremap <c-h> 8h
vnoremap <c-l> 8l
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-o> <esc>o

" configure *************************************************************************
set fencs=utf-8,ucs-bom,shift-jis,gbk,gb2312,gb18030,cp936,ansi,latin1
set termencoding=gbk,utf-8
set encoding=utf-8
"set fileencoding=utf-8
set cmdheight=1
set nomore
set textwidth=90
set path=/home/sv/work/ebf_6ull_linux/include
set path+=/home/sv/work/ebf_6ull_linux/arch/arm/include
set path+=/usr/include
set nobackup
set undofile
set noswapfile
set directory=.
set udir=~/.local/share/nvim/undo//
" set bdir=~/.local/share/nvim/backup//
set hidden
set shortmess+=c
set updatetime=100
set cscopetag
set number
set t_ut= " 防止vim背景颜色错误
set clipboard+=unnamedplus
set tabstop=4
set numberwidth=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smarttab
set showcmd
set scrolloff=15
set autoread
set autoindent "设置c语言自动对齐
set syntax=enable
set history=1000
set hlsearch
set ignorecase
set smartindent
filetype on
filetype plugin on
filetype indent on
let &fcs='eob: '
" let g:ruby_host_prog = '/home/sv/.gem/ruby/2.7.0/bin/neovim-ruby-host'
let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" theme *********************************************************************
"colorscheme darkblue
colorscheme space-vim-dark
hi Normal  guibg=NONE guibg=NONE
hi LineNr  guibg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
" statusline *************************************************************
set statusline=%1*\%<%.50F\             "显示文件名和文件路径 (%<应该可以去掉)
set statusline+=%=%2*\ %y%m%r%h%w\%*        "显示文件类型及文件状态
set statusline+=%3*\ %{&ff}\[%{&fenc}]\%*   "显示文件编码类型
"set statusline+=%4*\ row:%l/%L,col:%c\%*   "显示光标所在行和列
set statusline+=%4*\ %L/col:%c\%*   "显示光标所在行和列
set statusline+=%5*\%3p%%\%*            "显示光标前文本所占总文本的比例
set statusline+=%6*\ %{gutentags#statusline('[',']')}\%*
if has("termguicolors")
	set termguicolors
	hi User1 gui=none guifg=red guibg=none
	hi User2 gui=none guifg=yellow guibg=none
	hi User3 gui=none guifg=blue guibg=none
	hi User4 gui=none guifg=pink guibg=none
	hi User5 gui=none guifg=0 guibg=none
	hi User6 gui=none guifg=green guibg=none
else
	hi User1 cterm=none ctermfg=red ctermbg=none
	hi User2 cterm=none ctermfg=208 ctermbg=none
	hi User3 cterm=none ctermfg=169 ctermbg=none
	hi User4 cterm=none ctermfg=100 ctermbg=none
	hi User5 cterm=none ctermfg=green ctermbg=none
endif
" coc-highlight cursor *************************************************
hi CursorColumn guifg=#FF1493 gui=bold guibg=none
autocmd VimEnter * hi CocHighlightText guifg=#FF1493 gui=bold

" user func **********************************************************************
autocmd BufNewFile *.sh exec ":call Set_sh_Title()" 
autocmd BufNewFile *.py exec ":call Set_py_Title()" 
autocmd BufNewFile *.h exec ":call Set_h_Title()"

func Set_h_Title()
	if &filetype == 'cpp' 
		call setline(1, "#ifndef __" . toupper(split(expand("%:t"),'\.')[0]) . "_H__") 
		call append(line("."), "#define __" . toupper(split(expand("%:t"),'\.')[0]) . "_H__") 
		call append(line(".")+1, "") 
		call append(line(".")+2, "") 
		call append(line(".")+3, "") 
		call append(line(".")+4, "") 
		call append(line(".")+5, "") 
		call append(line(".")+6, "#endif") 
	endif
	normal 2j
endfunc

func Set_sh_Title() 
	if &filetype == 'sh' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: sv") 
		call append(line(".")+2, "\# mail: ") 
		call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "\#!/bin/bash") 
		call append(line(".")+6, "") 
	else 
	endif
	normal G
endfunc 

func Set_py_Title() 
	if &filetype == 'py' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: sv") 
		call append(line(".")+2, "\# mail: ") 
		call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "\#!/usr/bin/python3") 
		call append(line(".")+6, "") 
	else 
	endif
	normal G
endfunc 

func Set_c_Title() 
	call setline(1, "#include <stdio.h>")
	call append(line("."), "")
	call append(line(".")+1, "")
	call append(line(".")+2, "")
	call append(line(".")+3, "")
	call append(line(".")+4, "")
	call append(line(".")+5, "")
	call append(line(".")+6, "int main(int argc, char *argv[])")
	call append(line(".")+7, "{")
	call append(line(".")+8, "")
	call append(line(".")+9, "    return 0;")
	call append(line(".")+10, "}")
	normal 19j
endfunc 

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
