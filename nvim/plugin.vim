call plug#begin()
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'dense-analysis/ale'
        Plug 'neomake/neomake'
        Plug 'shaunsingh/nord.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'editorconfig/editorconfig-vim'
call plug#end()
