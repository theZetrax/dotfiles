local hop = require('hop')
local wk = require('which-key')

-- local jump_current_line = 
wk.register {
	['\\f'] = {
		name = '+hop',
		w = { hop.hint_words, 'To word' },
		v = { hop.hint_vertical, 'Vertically' },
		e = { hop.hint_anywhere, 'Anywhere'  },
		l = { hop.hint_lines_skip_whitespace, 'To line beginning'  },
		r = { hop.hint_patterns, 'To pattern'  },
	},
}
