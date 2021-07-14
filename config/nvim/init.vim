" ******************************************************************************
call plug#begin('~/.config/nvim/autoload')
Plug 'luochen1990/rainbow' " color ()
Plug 'tomtom/tcomment_vim' " comment
Plug 'vivy89/DoxygenToolkit.vim'
Plug 'mhinz/vim-signify' " view git/svn sign at left
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags' " create tags
Plug 'drewtempelmeyer/palenight.vim' " theme
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file browser
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
Plug 'mbbill/undotree'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'liuchengxu/vim-which-key'
Plug 'ferrine/md-img-paste.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'voldikss/vim-codelf'
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'vivy89/telescope.nvim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-translator'
Plug 'windwp/nvim-autopairs'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " statusline
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()
" ******************************************************************************

nmap <silent> rt <Plug>TranslateW
vmap <silent> rt <Plug>TranslateWV

lua require('nvim-autopairs').setup()
lua require('lsp')
lua require('lua-lsp')
lua require('statusline')
lua require('hl')
lua require('complete')

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
lua << EOF
EOF

" *.vim ************************************************************************
source /home/sv/.config/nvim/plug.d/undo.vim
source /home/sv/.config/nvim/plug.d/git.vim
source /home/sv/.config/nvim/plug.d/defx.vim
source /home/sv/.config/nvim/plug.d/rainbow.vim
source /home/sv/.config/nvim/plug.d/tcomment.vim
source /home/sv/.config/nvim/plug.d/tags.vim
source /home/sv/.config/nvim/plug.d/nvimgdb.vim
source /home/sv/.config/nvim/plug.d/markdown.vim
source /home/sv/.config/nvim/plug.d/dashboard.vim
source /home/sv/.config/nvim/plug.d/telescope.vim

source /home/sv/.config/nvim/misc.d/config.vim
source /home/sv/.config/nvim/misc.d/fun.vim
source /home/sv/.config/nvim/misc.d/keymap.vim
source /home/sv/.config/nvim/misc.d/theme.vim
