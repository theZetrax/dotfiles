call plug#begin()
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'dense-analysis/ale'
        Plug 'neomake/neomake'
        Plug 'shaunsingh/nord.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'editorconfig/editorconfig-vim'

        " Autocompletion LSP
        Plug 'neovim/nvim-lspconfig'
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'glepnir/lspsaga.nvim'

        " Syntax Definitions and stuff
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'onsails/lspkind-nvim'
        Plug 'nvim-lua/popup.nvim'
        Plug 'L3MON4D3/LuaSnip'

        " HTML/TSX autoclose
        Plug 'windwp/nvim-ts-autotag'
        " Syntax Higlighting (TreeSitter)
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        " Color Preview
        Plug 'folke/lsp-colors.nvim'
        " Autopair
        Plug 'windwp/nvim-autopairs'
        " MDX Syntax
        Plug 'findango/vim-mdx'

        " Git Fugitive
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'

        " Bufferline
        Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

        " Lualine
        Plug 'nvim-lualine/lualine.nvim'
call plug#end()
