-- Indent Guides
local config = nil
local loaded, indent = pcall(require, 'indent_blankline');

if not loaded then
	print("Indent guides had error loading")
else
	config = function ()
		vim.opt.list = true
		vim.opt.listchars:append 'space:⋅'
		vim.opt.listchars:append 'eol:↴'

		indent.setup {
			show_end_of_line = false,
			space_char_blankline = " ",
		}
	end
end

return config
