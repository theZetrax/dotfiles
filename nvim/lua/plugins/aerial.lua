return {
	'stevearc/aerial.nvim',
	config = function ()
		local aerial = require('aerial')
		aerial.setup {
			-- Config
			show_guides = true,
			backends = { "treesitter", "lsp", "markdown", "man" },
			highlight_on_hover = true,
			layout = {
				min_width = 35,
			},
			float = {
				relative = 'win',
			},
			close_automatic_events = { 'unfocus', 'switch_buffer' },

			on_attach = function (bufnr)
				-- vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
				-- vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
			end
		}

		local wk = require('which-key')

		local outline_open = false
		wk.register({
			['a'] = { function ()
				if outline_open then
					vim.cmd [[ AerialClose ]]
					outline_open = false
				else
					vim.cmd [[ AerialOpen ]]
					outline_open = true
				end
			end, 'Toggle Outline', {  }}
		}, { prefix = '<leader>' })
	end
}
