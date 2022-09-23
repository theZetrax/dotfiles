" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ CheckBackspace() ? "\<TAB>" :
"      \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
" else
"  inoremap <silent><expr> <c-@> coc#refresh()
" endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Formatting Current buffer code
xmap <leader>fr :ALEFix<Return>
nmap <leader> fr :ALEFix<Return>

" Telescope Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Tab-Explorer
nnoremap <leader>xx <cmd>Texplore<cr>
nnoremap <leader>cx <cmd>Explore<cr>

" Selecting a Completion using Ctrl-y or Tab
inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"

" Git Fugitive
nnoremap <leader>lg <cmd>G log %<cr>
nnoremap <leader>ld <cmd>G diff %<cr>
nnoremap <leader>Lg <cmd>G log<cr>
nnoremap <leader>Ld <cmd>G diff<cr>

" Buffer Movement
" SEE: https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
set hidden
nnoremap <leader>t :enew<CR> " Create a new buffer and open that buffer
nnoremap <leader>l :bnext<CR> " Move to Prev. Buffer
nnoremap <leader>p :bprevious<CR> " Move to Prev. Buffer
nnoremap <leader>bq :bd<CR> " Close current buffer move to next
nnoremap <leader>bqa :bufdo bd<CR> " Close current buffer move to next
nnoremap <leader>bl :ls<CR> " Show all buffers in a list, and their progress
