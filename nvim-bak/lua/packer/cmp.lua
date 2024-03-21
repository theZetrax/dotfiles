local loaded, cmp = pcall(require, 'cmp')
local luasnip_loaded, luasnip = pcall(require, 'luasnip');

vim.cmd [[ set completeopt=menu,menuone,noselect ]]

-- ref: https://github.com/hrsh7th/nvim-cmp#recommended-configuration
if not loaded or not luasnip_loaded then
	print("Either NVIM cmp or luasnip had error loading")
else
	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		window = {},
		mapping = cmp.mapping.preset.insert({
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-d>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			-- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			['<CR>'] = cmp.mapping.confirm({ select = false }),
			['<Tab>'] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
			{ name = 'nvim_lua' }
		}),
		{
			{ name = 'buffer' }
		}
	})

	-- Set configuration for specific filetype.
	cmp.setup.filetype('gitcommit', {
		sources = cmp.config.sources({
			{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
		}, {
			{ name = 'buffer' },
		})
	})

	-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ '/', '?' }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		}
	})

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(':', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = 'path' }
		}, {
			{ name = 'cmdline' }
		})
	})

	-- Adding autopairs to close function calls with parantesis
	local ap_loaded, ap = pcall(require, 'nvim-autopairs.completion.cmp')
	if not ap_loaded then
		print('NVIM autopairs had error loading, can not complete paring on NVIM completion')
	else
		cmp.event:on(
			'confirm_done',
			ap.on_confirm_done(),
			nil
		)
	end
end
