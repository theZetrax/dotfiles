return {
	"phaazon/hop.nvim",
	branch = "v2", -- optional but strongly recommended
	config = function()
		local ok, hop = pcall(require, "hop")
		if not ok then print("Hop not installed") return end

		-- you can configure Hop the way you like here; see :h hop-config
		hop.setup({ keys = "etovxqpdygfblzhckisuran" })

		local wk = require("which-key")

		-- local jump_current_line =
		wk.register({
			["\\f"] = {
				name = "+hop",
				w = { hop.hint_words, "To word" },
				v = { hop.hint_vertical, "Vertically" },
				e = { hop.hint_anywhere, "Anywhere" },
				l = { hop.hint_lines_skip_whitespace, "To line beginning" },
				r = { hop.hint_patterns, "To pattern" },
			},
		})
	end,
	dependencies = { "nvim-treesitter/nvim-treesitter" },
}
