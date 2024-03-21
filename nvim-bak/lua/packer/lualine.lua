local loaded, ll = pcall(require, 'lualine')

if not loaded then
	print("Lualine had error loading")
else
	ll.setup({
		options = {
			theme = 'nord',
			component_separators = { left = '', right = ''},
			section_separators = { left = '', right = ''},
			icons_enabled = false,
			symbols = {
				modified = ' ●',      -- Text to show when the buffer is modified
				alternate_file = '#', -- Text to show to identify the alternate file
				directory =  '',     -- Text to show when the buffer is a directory
			},
		}
	})
end

