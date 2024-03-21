local wk = require('which-key')
local telescope = require('telescope')
local visual_utils = require('utils.get-visual-selection')

local builtin = require('telescope.builtin')

telescope.setup {
	defaults = {
		layout_strategy = 'vertical',
		layout_config = {
			height = 0.70,
			width = 0.90,
			anchor = "N",
			prompt_position = 'top',
		},

	}
}

-- Extensions
telescope.load_extension("bookmarks")

wk.register({
	f = {
		name = "+file",
		f = { function ()
			builtin.find_files {}
		end, "Find files" },
		g = { builtin.live_grep, "Live grep" },
		b = { builtin.buffers, "Buffers" },
		h = { builtin.help_tags, "Help tags" },
		t = { builtin.lsp_dynamic_workspace_symbols, "Symbols" },
		m = { '<CMD>Telescope bookmarks<CR>', 'Bookmarks' }
	},
	e = {
		name = "+explore",
		e = { "<cmd>Explore<cr>", 'Explore' },
		t = { function() vim.cmd([[ tab split ]]) end, "Dupicate current buffer in a new tab" },
		n = { function() vim.cmd([[ tabnew ]]) end, "New tab" }
	}
}, { prefix = "<leader>" })

wk.register({
	f = {
		name = "+file",
		g = { function ()
			local text = visual_utils.getVisualSelection()
			builtin.live_grep({ default_text = text })
		end, "Find Selection" }
	}
}, { prefix = "<leader>", mode = "v" })
