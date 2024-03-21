local lspconfig = require('lspconfig')
local wk = require('which-key')

wk.register({
	l = {
		name = 'LSP Commands',
		r = { '<cmd>LspRestart<cr>', 'Restart Current Buffer Server(s)' },
	},
	-- Code Actions/Commands
	c = {
		name = 'Code Action',
		f = {
			'<cmd>:Neoformat<cr>', 'Format document',
		},
		r = {
			name = 'Rename symbol',
			r = { '<cmd>Lspsaga rename<cr>', 'In file' },
			a = { '<cmd>Lspsaga rename ++project<cr>', 'All occurences' },
		},
		a = { '<cmd>Lspsaga code_action<cr>', 'Code Actions' },
		d = {
			name = 'Show diagnostics',
			l = { '<cmd>Lspsaga show_line_diagnostics<cr>', 'On line' },
			b = { '<cmd>Telescope diagnostics<cr>', 'On buffer' },
		},
	}
}, { prefix = '<leader>' })

wk.register({
	['K'] = { '<cmd>Lspsaga hover_doc<cr>', "Hover docs" },
	['<C-k>'] = { vim.lsp.buf.signature_help, "Signature help" }
})

wk.register({
	['g'] = {
		name = '+goto',
		D = { '<cmd>Lspsaga goto_type_definition<cr>', 'Go to type definition'},
		d = { '<cmd>Lspsaga goto_definition<cr>', 'Go to definition' },
		f = { function() vim.lsp.buf.format { async = true } end, 'Format Buffer' },
		p = {
			name = '+peek',
			d = { '<cmd>Lspsaga peek_type_definition<cr>', 'Peek type Definition'},
			D = { '<cmd>Lspsaga peek_definition<cr>', 'Peek definition'},
		},
		['['] = { '<cmd>Lspsaga diagnostic_jump_prev<cr>', 'Previous diagnostic' },
		[']'] = { '<cmd>Lspsaga diagnostic_jump_next<cr>', 'Next diagnostic' }
	}
})

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.cssls.setup {
	capabilities = capabilities,
}
lspconfig.html.setup {
	capabilities = capabilities,
}

lspconfig.gopls.setup {}
lspconfig.emmet_ls.setup{}
lspconfig.tsserver.setup{}
lspconfig.eslint.setup{}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
	globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- LSP Completion
local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
