" user func **********************************************************************
autocmd BufNewFile *.sh exec ":call Set_sh_Title()" 
autocmd BufNewFile *.py exec ":call Set_py_Title()" 
autocmd BufNewFile *.h exec ":call Set_h_Title()"
" autocmd BufWinEnter * silent call Try_exit_empty_buf()
autocmd BufWinEnter * silent call Copy_clang_format()
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ******************************************************************************
let s:try_exit_empty_buf = 0
func! Try_exit_empty_buf()
	if len(buffer_name()) == 0 && s:try_exit_empty_buf == 1 && winnr('$') == 1
		exe "q"
	else
		let s:try_exit_empty_buf = 1
	endif
endfunc

" ******************************************************************************
func Copy_clang_format()
try
	let l:buf_dir = expand('%:p:h', 1)
	if g:gutentags_resolve_symlinks
		let l:buf_dir = fnamemodify(resolve(expand('%:p', 1)), ':p:h')
	endif
	if !exists('g:nvim_root')
		let b:nvim_root = gutentags#get_project_root(l:buf_dir)
		let b:compile_commands_json = b:nvim_root . "/compile_commands.json"
		if filereadable(b:compile_commands_json)    " 判断文件是否存在"
			let b:clang_cormat_copy_command = "cp /home/sv/sv_etc/other/.clang-format " . b:nvim_root . " -rvf"
			call system(b:clang_cormat_copy_command)
		endif
	endif
catch
endtry
endfunc

" ******************************************************************************
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

" ******************************************************************************
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

" ******************************************************************************
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

" ******************************************************************************
fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
