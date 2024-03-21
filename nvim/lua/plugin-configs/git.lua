local gitsigns = require('gitsigns')

gitsigns.setup {
	on_attach = function()
		local gs = package.loaded.gitsigns
		local wk = require('which-key')

		wk.register({
			['<leader>gS'] = { gs.stage_buffer, 'Stage buffer' },
			['<leader>ghu'] = { gs.undo_stage_hunk, 'Undo staged hunk' },
			['<leader>gR'] = { gs.reset_buffer, 'Reset buffer' },
			['<leader>gp'] = { gs.preview_hunk, 'Preview hunk' },
			['<leader>gfb'] = { function() gs.blame_line{full=true} end, 'Full line blame' },
			['<leader>gt'] = { gs.toggle_current_line_blame, 'Toggle git line blame' },
			['<leader>gld'] = { gs.diffthis, 'Diff this' },
			['<leader>gD'] = { function() gs.diffthis('~') end , 'Diff ~'},
			['<leader>gd'] = { gs.toggle_deleted, 'Toggle deleted lines' }
		})
	end
}

