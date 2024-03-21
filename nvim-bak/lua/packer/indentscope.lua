-- show current scope
local config = nil

local loaded, indentscope = pcall(require, 'mini.indentscope')

if not loaded then
	print('Mini Indentscope module had an error')
else
	config = function() indentscope.setup {} end
end

return config
