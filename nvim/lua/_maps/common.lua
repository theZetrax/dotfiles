local wk = require("which-key")
local ln = require("utils.line-number")

-- local get_vimrc = function() return os.getenv("MYVIMRC") end
wk.register({
	b = {
		name = '+buffer',
		k = { '<cmd>bw<cr>', 'Close active buffer' },
		c = { '<cmd>:%bd|e#<cr>', 'Close other buffers' },
		a = { '<cmd>:%bd<cr>', 'Close other buffers' },
	},
	u = {
		name = '+ui',
		l = { ln.toggleLineNumbers, 'Toggle Line Numbers' }
	},
}, { prefix = '<leader>' })
