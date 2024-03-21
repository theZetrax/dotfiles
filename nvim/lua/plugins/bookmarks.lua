return {
	'crusj/bookmarks.nvim',
	branch = 'main',
	dependencies = { 'kyazdani42/nvim-web-devicons' },
	config = function()
		local ok, bookmarks = pcall(require, 'bookmarks')
		if not ok then print("Failed to load bookmarks.nvim") return end

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
	end
}
