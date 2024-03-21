-- NVIM autopairs
return {
	'windwp/nvim-autopairs',
	config = function()
		local ok, autopairs = pcall(require, 'nvim-autopairs')
		if not ok then print("Failed to load nvim-autopairs") return end

		local Rule = require("nvim-autopairs.rule")
		autopairs.setup {}

		-- Add space between parentheses
		-- href: https://github.com/windwp/nvim-autopairs/wiki/Custom-rules
		local brackets = { { '(', ')' }, { '[', ']' }, { '{', '}' } }
		autopairs.add_rules {
			Rule(' ', ' ')
			:with_pair(function (opts)
				local pair = opts.line:sub(opts.col - 1, opts.col)
				return vim.tbl_contains({
					brackets[1][1]..brackets[1][2],
					brackets[2][1]..brackets[2][2],
					brackets[3][1]..brackets[3][2],
				}, pair)
			end)
		}
		for _,bracket in pairs(brackets) do
			autopairs.add_rules {
				Rule(bracket[1]..' ', ' '..bracket[2])
				:with_pair(function() return false end)
				:with_move(function(opts)
					return opts.prev_char:match('.%'..bracket[2]) ~= nil
				end)
				:use_key(bracket[2])
			}
		end

	end
}
