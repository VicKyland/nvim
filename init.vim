" _________            ____________
" __  ____________________  _____(________ _
" _  /    _  __ __  __ __  /_ __  /__  __ `/
" / /___  / /_/ _  / / _  __/ _  / _  /_/ /
" \____/  \____//_/ /_//_/    /_/  _\__, /
"                                  /____/
" by VicKyland
"



" | /.,_
" |/ ||||
" vim
set encoding=utf8

set ignorecase
set smartcase
set hlsearch
set incsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2

set smarttab

set autoindent
set smartindent

set number
"set relativenumber

syntax on
set termguicolors

set mouse=a

" System clipboard
set clipboard+=unnamedplus

" Cursor at the center
set so=30

filetype plugin indent on


" |)|    .,_ _
" | |L|(||||_\
"      _|
" Plugins
call plug#begin("~/.vim/plugged")
Plug 'ellisonleao/gruvbox.nvim'

Plug 'mhinz/vim-startify'

Plug 'romgrk/barbar.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

Plug 'nvzone/typr'
Plug 'nvzone/volt'
Plug 'nvzone/menu'

Plug 'lewis6991/gitsigns.nvim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'ms-jpq/coq_nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

Plug 'tpope/vim-commentary'

Plug 'mbbill/undotree'

call plug#end()


" (`       _ _
" _)()L||`(_(/_
" Sources
lua require('coqlsp')
lua require('toggleterm').setup()
source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/plugins/barbar.vim
" lua require("menu") 


" /\|-|_ _
" \/|_||(/_|`
" other
let g:mapleader=" "

" NERDTree
nnoremap <silent> <c-n> <Cmd>NERDTree<CR>

" ToggleTerm
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" Undotree
nnoremap <silent> <c-u> <Cmd>UndotreeToggle<CR>

" Telescope 
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Gruvbox
set background=dark
colorscheme gruvbox
