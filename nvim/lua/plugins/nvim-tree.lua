return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	config = function ()
		local ok, tree = pcall(require, 'nvim-tree')
		if not ok then
			print("Failed to load nvim-tree")
			return
		end

		local wk = require('which-key')

		-- disable netrw at the very start of your init.lua (strongly advised)
		-- vim.g.loaded_netrw = 1
		-- vim.g.loaded_netrwPlugin = 1

		local float_width = 40;
		local float_height = 20;
		---@diagnostic disable-next-line: unused-local
		local current_height = vim.api.nvim_win_get_height(0)
		local current_width = vim.api.nvim_win_get_width(0)

		local float_win_config = {
			relative = "editor",
			border = "rounded",
			width = float_width,
			height = float_height,
			row = 1,
			col = current_width - float_width,
		}

		tree.setup({
			-- nvim-tree changes the behaviour of :Explore Texplore by default
			hijack_netrw = false,
			update_focused_file = {
				enable = true,
			},
			diagnostics = {
				enable = true,
				debounce_delay = 50,
				icons = { hint = "i", info = "i", warning = "#", error = "!" }
			},
			view = {
				relativenumber = true,
				side = 'right',
				float = {
					enable = true,
					open_win_config = float_win_config,
				}
			},
			renderer = {
				indent_width = 1,
				icons = {
					show = {
						file = false,
						folder = false,
						folder_arrow = true,
						git = true,
						modified = true,
					},
					glyphs = {
						default = "",
						symlink = "",
						bookmark = "",
						modified = "●",
						folder = {
							arrow_closed = "",
							arrow_open = "",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "~",
							staged = "-",
							unmerged = "m",
							renamed = "r",
							untracked = "*",
							deleted = "d",
							ignored = "◌",
						},
					}
				}
			}
		})

		wk.register({
			['<leader>t'] = { '<cmd>:NvimTreeToggle<cr>', 'Toggle NvimTree' },
		})
	end
}
