package.loaded['packer/gitsigns'] = nil


return require('packer').startup(function(use)
	-- utility
	use 'wbthomason/packer.nvim'
	use { 'windwp/nvim-autopairs', config = require('packer/autopairs') }
	use 'NvChad/nvim-colorizer.lua'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {}
		end
	}
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = require('packer/indent')
	}
	use {
		'ggandor/lightspeed.nvim',
		config = require('packer/lightspeed')
	}


	-- mini modules
	use { 'echasnovski/mini.nvim' }
	use { 'echasnovski/mini.indentscope', requires = { 'echasnovski/mini.nvim' } }
	use { 'echasnovski/mini.bufremove', requires = { 'echasnovski/mini.nvim' } }
	use { 'echasnovski/mini.comment', requires = { 'echasnovski/mini.nvim' } }

	-- LSP & Treesitter
	use { 'neovim/nvim-lspconfig' }
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.x', requires = { { 'nvim-lua/plenary.nvim' } } }
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use { 'RRethy/vim-illuminate', config = require('packer/illuminate') }
	use { "williamboman/mason.nvim" }
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			--Please make sure you install markdown and markdown_inline parser
			{ "nvim-treesitter/nvim-treesitter" }
		}
	})

	-- Completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-git'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lua'

	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

	-- Colorscheme
	use 'shaunsingh/nord.nvim'

	-- FZF
	use 'nvim-lua/plenary.nvim'

	-- Git
	use 'lewis6991/gitsigns.nvim'
end)
