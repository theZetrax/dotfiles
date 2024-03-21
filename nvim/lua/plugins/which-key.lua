return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		local ok, wk = pcall(require, "which-key")
		if not ok then
			print("which-key not loaded")
			return
		end

		local ln = require("utils.line-number")

		wk.setup({}) -- init which-key

		wk.register({
			["\\"] = { "<cmd>noh<cr>", "Stop highlighting" }
		}, { prefix = "\\" })

		-- configure maps
		-- tab change
		wk.register({
			["<C-a>"] = { "<esc>ggVG<cr>", "Select All Text" },
			["<leader>]"] = { "<ESC>:tabnext<CR>", "Next tab" },
			["<leader>["] = { "<ESC>:tabprevious<CR>", "Previous tab" },
			["<leader>1"] = { "<ESC>:tabfirst<CR>", "First tab" },
			["<leader>2"] = { "<ESC>:tablast<CR>", "Last tab" },
			["<leader>q"] = { "<ESC>:tabclose<CR>", "Close tab" },
			["<leader>Q"] = { "<ESC>:tabonly<CR>", "Close other tabs" },
		})

		wk.register({
			b = {
				name = "+buffer",
			},
			u = {
				name = "+ui",
				l = { ln.toggleLineNumbers, "Toggle Line Numbers" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			name = "+buffers",
			["["] = { "<cmd>:bprevious<cr>", "Previous buffer" },
			["]"] = { "<cmd>:bnext<cr>", "Next buffer" },
			["k"] = { "<cmd>:bd<cr>", "Close buffer" },
			["K"] = { "<cmd>:bd!<cr>", "Close buffer" },
			-- k = { "<cmd>bw<cr>", "Close active buffer" },
			-- K = { "<cmd>bw!<cr>", "Close active buffer" },
			c = { "<cmd>:%bd|e#<cr>", "Close other buffers" },
			a = { "<cmd>:%bd<cr>", "Close all buffers" },
		}, { prefix = "<Tab>", mode = "n" })

		wk.register({
			e = {
				name = "+explore",
				e = { "<cmd>Explore<cr>", "Open current buffer path" },
				["."] = { "<cmd>e .<cr>", "Open project root" },
				t = {
					function()
						vim.cmd([[ tab split ]])
					end,
					"Dupicate current buffer in a new tab",
				},
				N = {
					function()
						vim.cmd([[ tabnew ]])
					end,
					"New buffer in separate tab",
				},
				n = {
					function()
						vim.cmd([[ tabnew ]])
						vim.cmd([[ e . ]])
					end,
					"New tab",
				},
			},
		}, { prefix = "<leader>" })

		-- settings related
		wk.register({
			name = "+settings",
			m = { "<cmd>:Mason<cr>", "Open Mason UI" },
			l = { "<cmd>:Lazy<cr>", "Open Lazy UI" },
		}, { prefix = "<leader>s" })
	end,
}
