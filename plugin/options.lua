local o = vim.opt
local bo = vim.bo

bo.expandtab = true
bo.shiftwidth = 2
bo.tabstop = 2

o.linebreak = true
o.breakindent = true
o.lazyredraw = true
o.showbreak = '↳ '
o.clipboard = 'unnamedplus'
o.background = 'dark'
o.ai = true
o.si = true
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
