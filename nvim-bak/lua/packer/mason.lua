local loaded, mason = pcall(require, 'mason')

if not loaded then
	print("Mason LSP had error loading")
else
	mason.setup()
end

