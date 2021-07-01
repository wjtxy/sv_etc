" ******************************************************************************
call plug#begin('~/.config/nvim/autoload')
Plug 'luochen1990/rainbow' " color ()
Plug 'tomtom/tcomment_vim' " comment
Plug 'vivy89/DoxygenToolkit.vim'
Plug 'mhinz/vim-signify' " view git/svn sign at left
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags' " create tags
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight' " highlight lsp
Plug 'drewtempelmeyer/palenight.vim' " theme
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file browser
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
call plug#end()

" tagbar ***********************************************************************
let g:tagbar_sort = 0
let g:tagbar_autoclose = 1
let g:tagbar_show_balloon = 0
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_silent=1

" vim-signify ******************************************************************
nnoremap fd :SignifyDiff<cr>    
nmap fj <plug>(signify-next-hunk)    
nmap fk <plug>(signify-prev-hunk)    
let g:signify_vcs_list = ['git','svn']

" *.vim **************************************************************************
source /home/sv/.config/nvim/nvim.d/coc.vim
source /home/sv/.config/nvim/nvim.d/defx.vim
source /home/sv/.config/nvim/nvim.d/rainbow.vim
source /home/sv/.config/nvim/nvim.d/tcomment.vim
source /home/sv/.config/nvim/nvim.d/gutentags.vim
source /home/sv/.config/nvim/sv.vim
source /home/sv/.config/nvim/fun.vim
source /home/sv/.config/nvim/theme.vim
