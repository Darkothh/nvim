local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

nmap('<A-1>', '<cmd>BufferGoto 1<cr>')
nmap('<A-2>', '<cmd>BufferGoto 2<cr>')
nmap('<A-3>', '<cmd>BufferGoto 3<cr>')
nmap('<A-4>', '<cmd>BufferGoto 4<cr>')
nmap('<A-5>', '<cmd>BufferGoto 5<cr>')
nmap('<A-6>', '<cmd>BufferGoto 6<cr>')
nmap('<A-7>', '<cmd>BufferGoto 7<cr>')
nmap('<A-8>', '<cmd>BufferGoto 8<cr>')
nmap('<A-9>', '<cmd>BufferGoto 9<cr>')
nmap('<A-0>', '<cmd>BufferLast<cr>')
nmap('<A-p>', '<cmd>BufferPin<cr>')
nmap('<A-c>', '<cmd>BufferClose<cr>')
nmap('<A-<>', '<Cmd>BufferMovePrevious<CR>')
nmap('<A->>', '<Cmd>BufferMoveNext<CR>')

require'bufferline'.setup {
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = true,
  clickable = true,
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
  insert_at_end = false,
  insert_at_start = false,
  maximum_padding = 1,
  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = nil,
}
