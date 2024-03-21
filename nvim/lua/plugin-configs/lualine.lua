local loaded, lualine = pcall(require, 'lualine')

if not loaded then
	print('Lualine not loaded properly')
else
	lualine.setup {
		options = {
			icons_enabled = false,
			section_separators = '',
			component_separators = ''
		},
	}
end
