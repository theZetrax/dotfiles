local loaded, builtin = pcall(require, 'telescope.builtin')

if not loaded then
	print('Telescope Builtins not found')
else
	vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
	vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
	vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})

	vim.keymap.set('n', '<Leader>ft', builtin.treesitter, {}) -- treesitter

	-- git
	vim.keymap.set('n', '<Leader>gs', builtin.git_status, {})
	vim.keymap.set('n', '<Leader>gb', builtin.git_branches, {})

	-- lsp
	vim.keymap.set('n', '<Leader>ws', builtin.lsp_workspace_symbols)
	vim.keymap.set('n', '<Leader>ds', builtin.lsp_document_symbols)
	vim.keymap.set('n', '<Leader>r', builtin.lsp_references)
	vim.keymap.set('n', '<Leader>e', builtin.lsp_implementations)
	vim.keymap.set('n', '<Leader>d', builtin.lsp_definitions)
	-- vim.keymap.set('n', '<Leader>#', builtin.)
end
