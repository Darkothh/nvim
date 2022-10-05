local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

vim.g.mapleader = " "


nmap('x', '"_x')
nmap('-', '<C-x>')
nmap('+', '<C-a>')
nmap('<C-a>', 'gg<S-v>G')

nmap('<leader>j', '"_d')

map("v", "<", "<gv")
map("v", ">", ">gv")
nmap('<C-l>', '<c-w>l')
nmap('<C-k>', '<c-w>k')
nmap('<C-j>', '<c-w>j')
nmap('<C-h>', '<c-w>h')

-- nmap('<leader>t', ':ServerRun<cr>')
-- nmap('<leader>tt', ':ServerToggle<cr>')

-- Telescope
-- nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
-- nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
-- nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
-- nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')
-- nmap('<leader>fk', '<cmd>Telescope keymaps<cr>')
-- nmap('<leader>fc', '<cmd>Telescope colorscheme<cr>')

-- Nvim Tree
nmap('<c-b>', ':NvimTreeToggle<cr>')
-- nmap('<leader>ef', ':NvimTreeFindFile<cr>')

nmap('<c-f>', ':Format<cr>')

-- Nvim
map('', '<F5>', ':set nowrap!<cr>')
imap(',,', '<Esc>')
map('', '<c-s>', ':w<cr>')
map('', '<c-q>', ':q<cr>')
map('', '<c-r>', ':source %<cr>')
nmap('dw', 'vb"_d')
nmap('U', '<cmd>redo<cr>')
-- Tabs
nmap('<tab>', ':tabnext<return>')
nmap('<s-tab>', ':tabprev<return>')
vim.cmd([[
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
" }}}
]])
