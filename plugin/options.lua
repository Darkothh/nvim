local o = vim.opt

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
vim.cmd([[
set nohlsearch
syntax on
]])
-- Auto Commands
vim.cmd 'au FileType * set fo-=c fo-=r fo-=o' -- Disable continuation of comments to the next line
vim.cmd 'au BufNewFile,BufRead *.conf setf dosini' -- Set filetype dosini to .conf file to treesitter highlight
