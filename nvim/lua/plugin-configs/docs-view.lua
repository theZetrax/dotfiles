local ui = require("LspUI")

ui.setup {
	hover = {
		enable = true,
		command_enable = true,
		keybind = {
			prev = "p",
			next = "n",
			quit = "q",
		},
	},
}

