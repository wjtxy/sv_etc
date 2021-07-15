" ******************************************************************************
call plug#begin('~/.config/nvim/autoload')
Plug 'luochen1990/rainbow' " color ()
Plug 'tomtom/tcomment_vim' " comment
Plug 'vivy89/DoxygenToolkit.vim', {'on': ['Dox', 'DoxAuthor', 'DoxLic']}
Plug 'mhinz/vim-signify' " view git/svn sign at left
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'drewtempelmeyer/palenight.vim' " theme
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file browser
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
Plug 'mbbill/undotree'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'liuchengxu/vim-which-key', { 'do': 'WhichKey' }
Plug 'ferrine/md-img-paste.vim', {'for': 'markdown'}
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'voldikss/vim-codelf', {'on': 'CodelfOpenBrowser'}
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
Plug 'vim-autoformat/vim-autoformat'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " show color at background
call plug#end()
" ******************************************************************************

" rrethy/vim-hexokinase ****
let g:Hexokinase_highlighters = ['background']

lua require('nvim-autopairs').setup()

lua require('lsp')
lua require('lua-lsp')
lua require('statusline')
lua require('hl')
lua require('complete')

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
source /home/sv/.config/nvim/plug.d/complete.vim
source /home/sv/.config/nvim/plug.d/format.vim
source /home/sv/.config/nvim/plug.d/translate.vim

source /home/sv/.config/nvim/misc.d/config.vim
source /home/sv/.config/nvim/misc.d/fun.vim
source /home/sv/.config/nvim/misc.d/keymap.vim
source /home/sv/.config/nvim/misc.d/theme.vim
