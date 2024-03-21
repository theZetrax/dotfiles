local loaded, colorizer = pcall(require, 'colorizer')

if not loaded then
	print("Colorizer module had error loading")
else
	colorizer.setup()
end
