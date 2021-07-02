" undotree *********************************************************************
nnoremap rr :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HighlightChangedWithSign = 0
let g:undotree_HelpLine = 0

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
