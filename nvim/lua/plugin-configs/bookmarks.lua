local bookmarks = require('bookmarks')

bookmarks.setup {
	keymap = {
		toggle = "<leader>m", -- Toggle bookmarks
		add = "\\z",      -- Add bookmarks
		jump = "<CR>",    -- Jump from bookmarks
		delete = "dd",    -- Delete bookmarks
		order = "<space><space>", -- Order bookmarks by frequency or updated_time
		delete_on_virt = "\\dd", -- Delete bookmark at virt text line
		show_desc = "\\sd", -- show bookmark desc
	},
}
