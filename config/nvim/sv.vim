
nnoremap Q q
nnoremap q <Nop>
nnoremap q :q<cr>
nnoremap H <Nop>
nnoremap L <Nop>
nnoremap J <Nop>

nnoremap ff :call ShowFuncName()<cr>
nnoremap gw <c-w>w
nnoremap gs :split<cr>
nnoremap <c-t> :%s/<C-R>=expand("<cword>")<cr>//g<left><left>
vnoremap <c-t> y:%s/<C-R>"//g<left><left>
nnoremap zi o<esc>A{<esc>o}<esc>O
nnoremap zI A{<esc>o};<esc>O
nnoremap ;; A;<esc>
inoremap ;; <esc>A;<esc>
vnoremap z( s()<esc><left>p
vnoremap z' s''<esc><left>p
vnoremap z" s""<esc><left>p
nnoremap <c-]> g<c-]>

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

" configure *************************************************************************
set autochdir
set nofoldenable
set foldlevel=99
set fdm=syntax
set fencs=utf-8,ucs-bom,shift-jis,gbk,gb2312,gb18030,cp936,ansi,latin1
set termencoding=gbk,utf-8
set encoding=utf-8
set path+=/usr/include
set cmdheight=1
set nomore
set textwidth=90
set nobackup
" set undofile " 持久undo
set noswapfile
set directory=.
set udir=~/.config/nvim/undo//
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

" ******************************************************************************
" let g:ruby_host_prog = '/home/sv/.gem/ruby/2.7.0/bin/neovim-ruby-host'
let &fcs='eob: '
let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"

filetype on
filetype plugin on
filetype indent on
