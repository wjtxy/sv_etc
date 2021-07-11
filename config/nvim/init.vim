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
Plug 'nvim-telescope/telescope.nvim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-translator'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'L3MON4D3/LuaSnip'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " statusline
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'
call plug#end()
" ******************************************************************************

nmap <silent> rt <Plug>TranslateW
vmap <silent> rt <Plug>TranslateWV

lua require('lsp')
lua require('statusline')
lua require('hl')
lua require('lsputil')

" theme *********************************************************************
set background=dark
colorscheme palenight
hi Normal  guibg=NONE guibg=NONE
set statusline=%1*\\      
set termguicolors
hi User1 gui=none guifg=red guibg=none

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

source /home/sv/.config/nvim/misc.d/config.vim
source /home/sv/.config/nvim/misc.d/fun.vim
source /home/sv/.config/nvim/misc.d/keymap.vim
