return {
	"jinzhongjia/LspUI.nvim",
	branch = "legacy",
	config = function()
		local ok, ui = pcall(require, "LspUI")
		if not ok then print("LspUI not found") return end

		ui.setup {
			prompt = false,
			hover = {
				enable = true,
				command_enable = true,
				keybind = {
					prev = "p",
					next = "n",
					quit = "q",
				},
			}
		}
	end
}
