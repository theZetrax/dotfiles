local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
	ensure_installed = { "go", "css", "html", "bash", "javascript", "json", "lua", "python", "typescript", "yaml" },
	auto_install = true,
	indent = { enabled = true },
	autotag = { enable = true, },
	highlight = { enable = true, },
}
