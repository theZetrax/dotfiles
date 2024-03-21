local wk = require('which-key')

wk.register({
	['c'] = {
		['l'] = {
			name = 'ALE',
			['l'] = { '<CMD>ALEDetail<CR>', 'Lint Details' },
			['f'] = { '<CMD>ALEFix<CR>', 'Fix' },
			['s'] = { '<CMD>ALEFixSuggest<CR>', 'Fix Suggest' },
		},
	}
}, { prefix = '<leader>' })
