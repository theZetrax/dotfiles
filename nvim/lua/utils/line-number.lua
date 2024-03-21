local M = {}

local isRelative = true
local function toggleLineNumbers()
	if isRelative then
		vim.opt.statuscolumn = "%l %r"
	else
		vim.opt.statuscolumn = nil
	end

	isRelative = not isRelative
end

M.toggleLineNumbers = toggleLineNumbers

return M
