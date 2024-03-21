return {
	-- Mini Plugins
	{ 'echasnovski/mini.nvim', version = '*'},
	{
		'echasnovski/mini.comment',
		version = '*',
		config = function ()
			require('mini.comment').setup{}
		end
	},
	{
		'echasnovski/mini.indentscope',
		version = '*',
		config = function ()
			require('mini.indentscope').setup {
				draw = {
					delay = 30
				}
			}
		end
	},
	{
		'echasnovski/mini.tabline',
		version = '*',
		config = function()
			require('mini.tabline').setup {
				show_icons = false,
			}
		end
	},
	{
		'echasnovski/mini.cursorword',
		version = '*',
		config = function()
			require('mini.cursorword').setup {
				-- ms
				delay = 150,
			}
		end

	},
	{
		 'echasnovski/mini.surround',
		 version = '*',
		 config = function()
		 	require('mini.surround').setup {}
		 end
	},
}
