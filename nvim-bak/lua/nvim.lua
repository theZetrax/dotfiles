if vim.g.vscode then
	return
end

vim.o.relativenumber = true
vim.o.number = true
vim.o.termguicolors = true

-- Indent
vim.bo.tabstop = 2
vim.cmd('set shiftwidth=2')
vim.cmd('set softtabstop=2')

vim.wo.scrolloff = 4
vim.o.showtabline = 1
vim.o.swapfile = false
vim.o.hidden = true

vim.cmd [[ set backupskip=/tmp/*,/private/tmp/* ]]

-- TODO for config development only
-- remove after use
package.loaded["plugins"] = nil
require('plugins')

-- plugin requires
require('packer/mini') -- setting up mini modules
require('packer/lspconfig')
require('packer/colorizer')

require('colorscheme')

package.loaded['maps/root'] = nil
require('maps/root') -- load all maps
require('packer/gitsigns')
require('packer/lualine')
require('packer/mason')
require('packer/cmp')
require('packer/lspsaga')

