local g = vim.g
local opt = vim.opt


opt.linebreak = true
opt.breakindent = true
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
g.showbreak = '↳ '
opt.clipboard = 'unnamedplus'
opt.background = 'dark'
g.one_allow_italics = '1'
vim.cmd([[
set tabstop=2
set shiftwidth=2
set ai
set si
set expandtab
set cmdheight=2
set display+=lastline
set complete+=kspell
set completeopt=menuone,longest
set exrc
set cursorline
"set relativenumber
set nu
set nohlsearch
set mouse=a
set hidden
set splitright
set splitbelow
set noerrorbells
set nowrap
set formatoptions+=r
set ignorecase
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=2
set noshowmode
set updatetime=200
set encoding=UTF-8
set nojoinspaces
set showcmd
set wildignore+=*/node_modules/**
filetype plugin indent on
filetype plugin on
set ttyfast
set lazyredraw
set laststatus=3
let g:sneak#label = 1
syntax on
colorscheme one
]])
