local setup = function()
	-- Diagnostic
	local dgopts = { noremap = false, silent = true }
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, dgopts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, dgopts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, dgopts)
end

local on_attach = function(_, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set('n', 'K', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'C-k', vim.lsp.buf.signature_help, bufopts)

	-- Code Action
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

return {
	setup = setup,
	on_attach = on_attach
}
