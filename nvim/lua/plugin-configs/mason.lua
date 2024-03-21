local mason = require('mason')
local wk = require('which-key')

mason.setup {
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
}

