local o = vim.opt
vim.notify = require("notify")
o.linebreak = true
o.breakindent = true
o.lazyredraw = true
o.showbreak = '↳ '
o.clipboard = 'unnamedplus'
o.background = 'dark'
o.tabstop = 2
o.shiftwidth = 2
o.ai = true
o.si = true
o.expandtab = true
o.cmdheight = 1
o.exrc = true
o.nu = true
o.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft = '┫',
  vertright = '┣',
  verthoriz = '╋',
}
vim.opt.shadafile = "NONE"
vim.opt.shadafile = ""
vim.cmd([[
colorscheme komau
set display+=lastline
set complete+=kspell
set completeopt=menuone,longest
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
" set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=2
set noshowmode
set timeoutlen=200
set updatetime=100
set encoding=UTF-8
set nojoinspaces
set showcmd
filetype plugin indent on
filetype plugin on
set ttyfast
set laststatus=3
let g:sneak#label = 1
syntax on
]])

-- Auto Commands
vim.cmd 'au FileType * set fo-=c fo-=r fo-=o' -- Disable continuation of comments to the next line
vim.cmd 'au BufNewFile,BufRead *.conf			setf dosini' -- Set filetype dosini to .conf file to treesitter highlight
