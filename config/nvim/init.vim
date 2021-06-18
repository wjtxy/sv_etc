"let mapleader=","

call plug#begin('~/.config/nvim/autoload')
Plug 'vim-scripts/a.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'babaybus/DoxygenToolkit.vim'
Plug 'mhinz/vim-signify'
Plug 'ludovicchabant/vim-gutentags'
Plug 'luochen1990/rainbow'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

" tagbar ***********************************************************************
let g:tagbar_autoclose = 1
let g:tagbar_show_balloon = 0
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_silent=1

" tcomment_vim *****************************************************************
let g:tcomment_maps = 0
let g:tcomment_mapleader1 = ''
let g:tcomment_mapleader2 = ''
let g:tcomment_opleader1 = ''
let g:tcomment_mapleader_uncomment_anyway = ''
let g:tcomment_mapleader_comment_anyway = ''
let g:tcomment_map_modifier = ''
let g:tcomment_opmap_modifier = ''
vnoremap gc :TCommentBlock count=2<cr>
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
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
vmap <silent> gp <Plug>(coc-format-selected)
nmap <silent> gp <Plug>(coc-format-selected)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
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
