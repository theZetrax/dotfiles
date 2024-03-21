vim.cmd [[ nnoremap ? <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR> ]]
vim.cmd [[ xnoremap <C-S>f <Cmd>call VSCodeNotifyVisual('workbench.action.findInFiles', 1)<CR> ]]
vim.cmd [[ xnoremap <C-F> <Cmd>call VSCodeNotifyVisual('workbench.action.findInFiles', 1)<CR> ]]
