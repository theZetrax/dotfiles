local loaded, capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_loaded, lspconf = pcall(require, 'lspconfig')
local on_attach = require('maps/lsp').on_attach

if not loaded or not lsp_loaded then
	print("NVIM cmp or Lsp Config not loaded properly")
end

lspconf.sumneko_lua.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {'vim'},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
