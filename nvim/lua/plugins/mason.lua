return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate", -- :MasonUpdate updates registry contents
	config = function()
		local ok, mason = pcall(require, "mason")
		if not ok then
			print("Failed to load Mason")
			return
		end

		-- local wk = require('which-key')

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
	end,
}
