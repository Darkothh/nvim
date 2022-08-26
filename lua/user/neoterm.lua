require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true,
  direction = 'vertical',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = "pwsh.exe", -- change the default shell
  size = 65,
  -- float_opts = {
  --   border = 'curved',
  --   winblend = 3,
  --   highlights = {
  --     border = "Normal",
  --     background = "Normal",
  --   }
  -- }
}
