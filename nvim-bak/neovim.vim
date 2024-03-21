autocmd!
scriptencoding utf-8

set relativenumber number
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

if !1 | finish | endif

set hidden
set exrc
set incsearch
set nocompatible
set mouse=nvih
syntax enable
set encoding=utf-8
set title
set autoindent
set background=dark
set showcmd
set hlsearch
set cmdheight=2
set laststatus=2
set scrolloff=10
set shell=fish
set backupskip=/tmp/*,/private/tmp/*
set termguicolors

" Indentation
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Backup
set nobackup
set noswapfile
set undofile
set undodir=~/.vim/undodir

" Color column
set colorcolumn=80
set signcolumn=yes

hi ColorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

" Alacritty doesn't change the cursor when leaving
" Neovim, this is the fix.
" see: https://github.com/neovim/neovim/issues/6005
" see: https://github.com/neovim/neovim/wiki/FAQ#cursor-style-isnt-restored-after-esxiting-or-suspending-and-resuming-nvim
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

au VimLeave,VimSuspend * set guicursor=a:ver90-blinkon0

if has('nvim')
	set inccommand=split
endif

set t_BE=
set cursorline

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"---- }}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plugin.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}
"

" Tabline "{{{
" --------------------------------------------------------------------
runtime ./tabline.vim
" }}}"

" ALE linter/formatter
let b:ale_fixers = {
       \ 'javascript': ['prettier', 'eslint'],
       \ 'typescript': ['prettier', 'eslint'],
       \ 'typescript-react': ['prettier', 'eslint'],
       \ 'jsx': ['prettier', 'eslint']
       \}

" --- Neomake, Running Async programs
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)

command! Scratch lua require'tools'.makeScratch()
command! CallCScope lua require'tools'.callCScope()

" Require Main Lua Configurations
lua require('config')


