-- Set up lspconfig.
local loaded, capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_loaded, lspconf = pcall(require, 'lspconfig')
local on_attach = require('maps/lsp').on_attach

if not loaded or not lsp_loaded then
	print("NVIM cmp or Lsp Config not loaded properly")
end

local tsserver = lspconf['tsserver']
tsserver.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
