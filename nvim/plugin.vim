call plug#begin()
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
