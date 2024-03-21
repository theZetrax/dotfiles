local config = nil
local loaded, ls = pcall(require, 'lightspeed')

if not loaded then
	print('Lightspeed had error loading')
else
	config = function () ls.setup {} end
end

return config
