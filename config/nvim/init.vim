"let mapleader=","

call plug#begin('~/.config/nvim/autoload')
Plug 'vim-scripts/a.vim' " move to .c and .h
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
Plug 'tomtom/tcomment_vim' " comment
Plug 'babaybus/DoxygenToolkit.vim'
Plug 'mhinz/vim-signify' " view git/svn sign at left
Plug 'ludovicchabant/vim-gutentags' " create tags
Plug 'luochen1990/rainbow' " color ()
Plug 'jackguo380/vim-lsp-cxx-highlight' " highlight lsp
Plug 'drewtempelmeyer/palenight.vim' " theme
" file browser
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
call plug#end()

" defx *************************************************************************
autocmd VimEnter * if argc() == 0 | :Defx | endif
call defx#custom#option('_', {
	\ 'columns': 'mark:git:icons:filename:type:size:time',
	\ 'ignored_files':
	\     '*.swp,*.o,*.cmd,.*',
	\ 'buffer_name': '',
	\ 'new': 1,
	\ 'auto_cd': 1
	\ })
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
	" Define mappings
	nnoremap <silent><buffer><expr> <CR>
	\ defx#do_action('open')
	nnoremap <silent><buffer><expr> c
	\ defx#do_action('copy')
	nnoremap <silent><buffer><expr> m
	\ defx#do_action('move')
	nnoremap <silent><buffer><expr> p
	\ defx#do_action('paste')
	nnoremap <silent><buffer><expr> l
	\ defx#do_action('open')
	nnoremap <silent><buffer><expr> P
	\ defx#do_action('preview')
	nnoremap <silent><buffer><expr> o
	\ defx#do_action('open_tree', 'toggle')
	nnoremap <silent><buffer><expr> K
	\ defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N
	\ defx#do_action('new_file')
	nnoremap <silent><buffer><expr> d
	\ defx#do_action('remove')
	nnoremap <silent><buffer><expr> r
	\ defx#do_action('rename')
	nnoremap <silent><buffer><expr> !
	\ defx#do_action('execute_command')
	nnoremap <silent><buffer><expr> yy
	\ defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> .
	\ defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> h
	\ defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~
	\ defx#do_action('cd')
	nnoremap <silent><buffer><expr> q
	\ defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Space>
	\ defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> *
	\ defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr> j
	\ line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k
	\ line('.') == 1 ? 'G' : 'k'
	nnoremap <silent><buffer><expr> <C-g>
	\ defx#do_action('print')
	nnoremap <silent><buffer><expr> cd
	\ defx#do_action('change_vim_cwd')
endfunction
" defx-icons *******************************************************************
let g:defx_icons_directory_icon = '+'
let g:defx_icons_parent_icon = '<<'
let g:defx_icons_default_icon = ' '
let g:defx_icons_copy_icon = ' '
let g:defx_icons_link_icon = ' '
let g:defx_icons_move_icon = ' '
let g:defx_icons_directory_symlink_icon = ' '
" defx-git *..******************************************************************
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'm',
  \ 'Staged'    : 's',
  \ 'Untracked' : 'u',
  \ 'Renamed'   : ' ',
  \ 'Unmerged'  : '>',
  \ 'Ignored'   : 'i',
  \ 'Deleted'   : 'x',
  \ 'Unknown'   : '?'
  \ })

" tagbar ***********************************************************************
let g:tagbar_sort = 0
let g:tagbar_autoclose = 1
let g:tagbar_show_balloon = 0
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_silent=1

" tcomment_vim *****************************************************************
autocmd FileType c let g:tcomment#options = {'count': 2}
autocmd FileType cpp let g:tcomment#options = {'count': 2}
let g:tcomment_maps = 0
let g:tcomment_mapleader1 = ''
let g:tcomment_mapleader2 = ''
let g:tcomment_opleader1 = ''
let g:tcomment_mapleader_uncomment_anyway = ''
let g:tcomment_mapleader_comment_anyway = ''
let g:tcomment_map_modifier = ''
let g:tcomment_opmap_modifier = ''
vnoremap gc :TCommentBlock<cr>
nnoremap gc :TComment<cr>

" DoxygenToolkit.vim ***********************************************************
let g:DoxygenToolkit_authorName="vivy89"

" vim-signify ******************************************************************
nnoremap fd :SignifyDiff<cr>    
nmap fj <plug>(signify-next-hunk)    
nmap fk <plug>(signify-prev-hunk)    
let g:signify_vcs_list = ['git','svn']

" gutentags *************************************************************
let g:gutentags_project_root = ['compile_commands.json', '.git']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_add_default_project_roots = 0
let g:gutentags_exclude_project_root = ['.project','.ignore_tags']
let g:gutentags_ctags_extra_args = [' -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ ']
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_empty_buffer = 1
" let g:gutentags_ctags_extra_args += ['--c++-kinds=-mv']
" let g:gutentags_ctags_extra_args += ['--c-kinds=-mv']
au FileType gitcommit,gitrebase,json,vim,make,sh,markdown,conf 
			\let g:gutentags_enabled=0

" coc **********************************************************************
let g:coc_global_extensions = [
			\'coc-calc',
			\'coc-python', 
			\'coc-java', 
			\'coc-json', 
			\'coc-translator', 
			\'coc-diagnostic', 
			\'coc-snippets',
			\'coc-highlight',
			\'coc-floaterm',
			\'coc-clangd',
			\'coc-pairs']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
vmap <silent> gp <Plug>(coc-format-selected)
nmap <silent> gp <Plug>(coc-format-selected)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" coc highlight
autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd VimEnter * hi CocHighlightText guifg=#FF1493 gui=bold

" coc translator
nmap tt <Plug>(coc-translator-p)
vmap tt <Plug>(coc-translator-pv)

" rainbow ******************************************************************
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['yellow', 'pink', 'red', 'white', 'green', 'blue'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" *.vim **************************************************************************
source /home/sv/.config/nvim/sv.vim
source /home/sv/.config/nvim/fun.vim
source /home/sv/.config/nvim/theme.vim
