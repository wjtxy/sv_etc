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
Plug 'mbbill/undotree'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'ferrine/md-img-paste.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
" ******************************************************************************


" *.vim ************************************************************************
source /home/sv/.config/nvim/plug.d/else.vim
source /home/sv/.config/nvim/plug.d/coc.vim
source /home/sv/.config/nvim/plug.d/defx.vim
source /home/sv/.config/nvim/plug.d/rainbow.vim
source /home/sv/.config/nvim/plug.d/tcomment.vim
source /home/sv/.config/nvim/plug.d/gutentags.vim
source /home/sv/.config/nvim/plug.d/nvimgdb.vim
source /home/sv/.config/nvim/plug.d/markdown.vim

source /home/sv/.config/nvim/misc.d/sv.vim
source /home/sv/.config/nvim/misc.d/fun.vim
source /home/sv/.config/nvim/misc.d/theme.vim
