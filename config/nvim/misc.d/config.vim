
set clipboard+=unnamedplus
" let g:clipboard = {
"             \'copy': { '*': 'wl-copy', '+': 'lemonade copy' },
"             \'paste': { '*': 'wl-paste', '+': 'lemonade paste' },
"             \'name': 'lemonade',
" 			\'cache_enabled': 1,
"             \}
set cursorline
" set mouse=a
set shortmess+=c
set completeopt=menuone,noselect
set autochdir
" set nofoldenable
set foldmethod=syntax
set foldlevel=99  " close all folds
set fencs=utf-8,ucs-bom,shift-jis,gbk,gb2312,gb18030,cp936,ansi,latin1
set termencoding=gbk,utf-8
set encoding=utf-8
set cmdheight=1
set textwidth=90
set nobackup
set noswapfile
set directory=.
set hidden
set number
set tabstop=4
set numberwidth=4
set shiftwidth=4
set softtabstop=4
set smarttab
set ts=4
set noexpandtab
set showcmd
set scrolloff=15
set autoread
set syntax=enable
set history=1000
set hlsearch
set ignorecase
set smartindent
if has("persistent_undo")
   let target_path = expand('~/.cache/nvim/undo//')
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir=target_path
    set undofile
endif

" ******************************************************************************
let &fcs='eob: '
let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"

syntax on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
