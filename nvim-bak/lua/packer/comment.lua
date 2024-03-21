local config = nil
local loaded, comment = pcall(require, 'mini.comment')

if not loaded then
	print('Comment LSP had error loading')
else
	config = function ()
		comment.setup({})
	end
end

return config
