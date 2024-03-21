local loaded, _ = pcall(require, 'lspconfig')

if not loaded then
	print('LSP config had an error loading')
else
	require('packer/lsp/tsserver')
	require('packer/lsp/sumneko_lua')
end
