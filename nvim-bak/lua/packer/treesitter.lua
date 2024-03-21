local config = nil
local loaded, ts = pcall(require, 'nvim-treesittter.configs')

if not loaded then
	print('Treesitter had issue loading')
else
	config = function ()
		ts.setup()
	end
end

return config
