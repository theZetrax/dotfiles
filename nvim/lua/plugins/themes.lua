return {
	{ "savq/melange-nvim" },
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			local ok, gruvbox = pcall(require, "gruvbox")
			if not ok then
				print("Failed to load gruvbox")
				return
			end

			gruvbox.setup({
				termgui_colors = true,
				transparent = true,
				invert_selection = false,
				transparent_mode = false,
				invert_signs = false,
				-- contrast = "soft",
				bold = true,
			})
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		tag = "v0.0.7",
		config = function()
			-- ignore the error message
			-- require('github-theme').setup({
			-- 	transparent = true,
			-- 	theme_style = "dark_default",
			-- 	comment_style = "bold",
			-- 	keyword_style = "bold",
			-- 	function_style = "bold",
			-- 	variable_style = "bold"
			-- })
		end,
	},
}
