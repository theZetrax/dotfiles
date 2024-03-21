vim.cmd('ALEDisable') -- Disable before settings
-- Explicit Definition
-- FIXME: currently enabling all on
-- 	javascript and typescript also triggers
-- 	deno linter.
vim.cmd("let g:ale_linters_explicit = 1")
vim.cmd("let g:ale_set_highlights = 0")

-- Enabling Linters/Formatters
vim.cmd [[
	let g:ale_fixers = {
	\	'javascript': ['eslint', 'prettier'],
	\	'typescript': ['eslint', 'prettier'],
	\	'typescriptreact': ['eslint', 'prettier'],
	\	'javascriptreact': ['eslint', 'prettier']
	\}

	let g:ale_linters = {
	\	'javascript': ['eslint', 'prettier'],
	\	'typescript': ['eslint', 'prettier'],
	\	'typescriptreact': ['eslint', 'prettier'],
	\	'javascriptreact': ['eslint', 'prettier']
	\}
]]

-- customization looks
vim.cmd("let g:ale_floating_window_border = []")
vim.cmd("let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']")
vim.cmd("let g:ale_floating_window_border = repeat([''], 8)")
vim.cmd("let g:ale_virtualtext_cursor = 'disabled'")
vim.cmd("let g:ale_sign_error = '~'")
vim.cmd("let g:ale_sign_warning = '-'")

vim.cmd('ALEEnable')
