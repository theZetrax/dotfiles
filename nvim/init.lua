require("config")
require("init-lazy")

-- Setup Lazygit
if vim.g.vscode then
	local plugins = {
		{
			'phaazon/hop.nvim',
			branch = 'v2', -- optional but strongly recommended
			config = function()
				-- you can configure Hop the way you like here; see :h hop-config
				require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
			end,
			dependencies = { 'nvim-treesitter/nvim-treesitter' }
		},
		{
			"folke/which-key.nvim",
			config = function()
				vim.o.timeout = true
				vim.o.timeoutlen = 300
				require('which-key').setup{}
			end,
		},
	}

	require("lazy").setup(plugins);
	require("_maps.vscode");
	require("_maps.hop");
else
	require("lazy").setup("plugins")
	-- require('root')
end
