call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'

call plug#end()

syntax on

set nocompatible
set wildmenu
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{FugitiveStatusline()}
set statusline+=%*
set number
set clipboard+=unnamedplus
" set cursorline
set tabstop=2
set shiftwidth=2
set expandtab
set background=dark
set title
set autoindent
set nobackup
set exrc

" Foldenable
set foldenable
set foldmethod=indent
set foldlevel=1
set foldcolumn=2

" autocmd FileType vim setlocal foldmethod=marker

" searching config
set incsearch
set hlsearch
set ignorecase
set smartcase

" Find files using Telescope command-line sugar.
" Run it as \ff, \fg \fb, \fh
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>tn <cmd>TestNearest<cr>
nnoremap <leader>tf <cmd>TestFile<cr>
nnoremap <leader>ts <cmd>TestSuite<cr>
nnoremap <leader>tl <cmd>TestLast<cr>

nnoremap <leader>gadd <cmd>G add %<cr>
nnoremap <leader>gstatus <cmd>G status<cr>
nnoremap <leader>glog <cmd>G log<cr>
nnoremap <leader>gcommit <cmd>G commit<cr>
nnoremap <leader>gdiff <cmd>Gvdiffsplit<cr>
nnoremap <leader>3diff <cmd>Gvdiffsplit!<cr>

" Divide splits side by side
nnoremap <C-e> <C-w>=<cr>
" nnoremap <C-v> <C-w>\|<cr>
nnoremap <C-h> <C-w>_<cr>

tnoremap <Esc> <C-\><C-n>

colorscheme desert
" -- AUTOCOMPLETE --
"filetype" plugin indent on

set directory=$HOME/.vim/swp//
set backupdir=~/.vim/.backup//
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

