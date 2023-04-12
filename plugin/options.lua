-- Auto Commands
vim.cmd 'au FileType * set fo-=c fo-=r fo-=o' -- Disable continuation of comments to the next line
vim.cmd 'au BufNewFile,BufRead *.conf			setf dosini' -- Set filetype dosini to .conf file to treesitter highlight
