" general********************************************
" let g:mapleader="\<Space>"
nnoremap m q
nnoremap q <Nop>
nnoremap q :q<cr>
nnoremap H <Nop>
nnoremap L <Nop>
nnoremap J <Nop>
inoremap <c-o> <cr>

nnoremap gw <c-w>w
nnoremap gs :split<cr>
nnoremap <c-t> :%s/<C-R>=expand("<cword>")<cr>//g<left><left>
vnoremap <c-t> y:%s/<C-R>"//g<left><left>
nnoremap ro o<esc>A{<esc>o}<esc>O
nnoremap rO A{<esc>o};<esc>O
nnoremap r; A;<esc>
vnoremap r( s()<esc><left>p
vnoremap r' s''<esc><left>p
vnoremap r" s""<esc><left>p
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
