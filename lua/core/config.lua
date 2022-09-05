local g = vim.g
local o = vim.opt

o.linebreak = true
o.breakindent = true
o.showbreak = '↳ '
o.clipboard = 'unnamedplus'
require("github-theme").setup({
  theme_style = "dark",
  comment_style = 'italic',
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  colors = {hint = "white", error = "#ff0000"},

  overrides = function(c)
    return {
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      TSField = {},
    }
  end
})
vim.cmd([[
autocmd FileType * set fo-=c fo-=r fo-=o " Disable continuation of comments to the next line
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
]])

-- Commands
vim.cmd 'command! Config edit $MYVIMRC'
vim.cmd 'command! ConfigReload luafile $MYVIMRC'
