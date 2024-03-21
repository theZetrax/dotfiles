package.loaded['maps/telescope'] = nil
require('maps/telescope')
require('maps/lsp').setup()

-- sourcing lua
get_vimrc = function() return os.getenv("MYVIMRC") end
vim.keymap.set('n', '<Leader><Leader>', function()
	vim.cmd("source " .. get_vimrc())
end, { noremap = true })

-- Explorer
vim.keymap.set('n', '<leader>xx', '<cmd>Texplore<cr>')
vim.keymap.set('n', '<leader>cx', '<cmd>Explore<cr>')

-- Mason LSP installer
vim.keymap.set('n', '<leader>xs', '<cmd>Mason<cr>')
