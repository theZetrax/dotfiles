return  {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		local ok, indentguides = pcall(require, "ibl")
		if not ok then
			print("Error: indent-blankline.nvim not found")
			return
		end

		vim.opt.termguicolors = true
		-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
		-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
		-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
		-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
		-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
		-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

		-- vim.opt.list = true
		indentguides.setup{}
	end
}



-- {
-- 	indent = {
-- 		char = " ",
-- 		tab_char = {
-- 			">",
-- 			"┊",
-- 		},
-- 		highlight = {
-- 			-- INFO: uncomment for colors on indentguides
-- 			-- "IndentBlanklineIndent1",
-- 			-- "IndentBlanklineIndent2",
-- 			-- "IndentBlanklineIndent3",
-- 			-- "IndentBlanklineIndent4",
-- 			-- "IndentBlanklineIndent5",
-- 			-- "IndentBlanklineIndent6",
-- 		},
-- 	},
-- }
