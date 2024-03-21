local wk = require('which-key')

wk.register({
	p = {
		name = '+project',
		s = {
			name = 'Session',
			s = { '<cmd>SaveSession<cr>', 'Save session' },
			d = { '<cmd>DeleteSession<cr>', 'Delete session' },
		},
	},
	r = { '<cmd>SessionRestore<cr>', 'Restore Previous Session' },
}, { prefix = '<leader>' })
