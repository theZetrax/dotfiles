local config = nil
local loaded, illuminate = pcall(require, 'illuminate')

if not loaded then
	print('Illuminate had error loading')
else
	config = function() illuminate.configure({
		delay = 450
	}) end
end

return config
