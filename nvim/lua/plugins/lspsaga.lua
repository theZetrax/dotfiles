return {
	"glepnir/lspsaga.nvim",
	event = "LspAttach",
	config = function()
		require("lspsaga").setup {
			lightbulb = {
				enable = true,
				enable_in_insert = false,
				sign = true,
				sign_priority = 40,
				virtual_text = true,
			},
		}
	end,
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter" }
	}
}
