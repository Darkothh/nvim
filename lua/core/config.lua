-- local g = vim.g
local o = vim.opt
vim.notify = require("notify")
o.linebreak = true
o.breakindent = true
o.showbreak = '↳ '
o.clipboard = 'unnamedplus'
o.background = 'dark'
o.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft = '┫',
  vertright = '┣',
  verthoriz = '╋',
}
require("catppuccin").setup({
	transparent_background = false,
	term_colors = true,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {"italic"},
		numbers = {},
		booleans = { "italic" },
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		nvimtree = true,
    notify = true,
	},
	color_overrides = {},
	highlight_overrides = {},
})
require('nvim-tundra').setup({
  transparent_background = false,
  editor = {
    search = {},
    substitute = {},
  },
  plugins = {
    lsp = true,
    treesitter = true,
    cmp = true,
    context = true,
    dbui = true,
    gitsigns = true,
    telescope = false,
  },
  overwrite = {
    colors = {},
    highlights = {},
  },
})
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd([[
colorscheme everforest
autocmd FileType * set fo-=c fo-=r fo-=o " Disable continuation of comments to the next line
set tabstop=2
set shiftwidth=2
set ai
set si
set expandtab
set cmdheight=1
set display+=lastline
set complete+=kspell
set completeopt=menuone,longest
set exrc
"set cursorline
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
set updatetime=100
set encoding=UTF-8
set nojoinspaces
set showcmd
filetype plugin indent on
filetype plugin on
set ttyfast
set lazyredraw
set laststatus=3
let g:sneak#label = 1
syntax on
]])
-- require("github-theme").setup({
--   theme_style = "dark",
--   comment_style = 'italic',
--   function_style = "italic",
--   sidebars = {"qf", "vista_kind", "terminal", "packer"},
--   colors = {hint = "white", error = "#ff0000"},

--   overrides = function(c)
--     return {
--       DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
--       TSField = {},
--     }
--   end
-- })
-- Commands
vim.cmd 'command! Config edit $MYVIMRC'
vim.cmd 'command! ConfigReload luafile $MYVIMRC'
vim.cmd 'au BufNewFile,BufRead *.conf			setf dosini'
-- vim.cmd 'au BufNewFile <cmd>lua require("lsp_lines").toggle()<cr>'
