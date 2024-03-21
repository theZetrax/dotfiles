return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	priority = 1000,
	config = function()
		local ok, ts = pcall(require, "nvim-treesitter.configs")
		if not ok then
			print("nvim-treesitter is not installed")
			return
		end

		ts.setup({
			ensure_installed = {
				"go",
				"css",
				"html",
				"bash",
				"javascript",
				"json",
				"lua",
				"python",
				"typescript",
				"yaml",
			},
			auto_install = true,
			indent = { enabled = true },
			autotag = { enable = true },
			highlight = { enable = true },
		})
	end,
}
