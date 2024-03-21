return {
	'nvim-lualine/lualine.nvim',
	config = function()
		local ok, lualine = pcall(require, 'lualine')

		if not ok then
			print('Lualine not loaded properly')
			return
		end

		lualine.setup {
			options = {
				icons_enabled = false,
				section_separators = '',
				component_separators = '',
			},
		}
	end
}
