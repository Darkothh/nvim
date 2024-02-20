-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.o.background = "dark" -- or "light" for light mode
vim.g.moonflyItalics = true
vim.o.formatoptions = "cro"
vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})
