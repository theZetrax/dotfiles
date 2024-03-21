return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			auto_restore_enabled = false,
			auto_session_enable_last_session = false,
			auto_session_last_session_dir = vim.fn.stdpath("data") .. "/sessions",
			auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions",
			auto_session_enabled = true,
		})

		local wk = require("which-key")

		wk.register({
			p = {
				name = "+project",
				s = {
					name = "Session",
					s = { "<cmd>SaveSession<cr>", "Save session" },
					d = { "<cmd>DeleteSession<cr>", "Delete session" },
				},
				m = { "<cmd>:Mason<cr>", "Open Mason UI" },
				l = { "<cmd>:Lazy<cr>", "Open Lazy UI" },
			},
			r = { "<cmd>SessionRestore<cr>", "Restore Previous Session" },
		}, { prefix = "<leader>" })
	end,
}
