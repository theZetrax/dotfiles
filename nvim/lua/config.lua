vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.bo.tabstop = 4
vim.o.termguicolors = true
vim.opt.cursorline = true
vim.o.hidden = true

vim.cmd [[ setl autoindent ]]
vim.cmd [[ setl smartindent ]]
vim.cmd [[ setl expandtab ]]
vim.cmd [[ set noswapfile ]]
-- Show relative line on netrw buffer
vim.cmd [[ let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl' ]]

-- Load project based config
vim.o.exrc = true
vim.cmd [[ set signcolumn=yes ]]
