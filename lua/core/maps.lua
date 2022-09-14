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

-- Packer
map('', '<leader>s', ':PackerSync<cr>')
map('', '<leader>i', ':PackerInstall<cr>')
map('', '<leader>C', ':PackerCompile<cr>')
map("v", "<", "<gv")
map("v", ">", ">gv")
nmap('<C-l>', '<c-w>l')
nmap('<C-k>', '<c-w>k')
nmap('<C-j>', '<c-w>j')
nmap('<C-h>', '<c-w>h')
-- map("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>")
-- LSP
map('', '<leader>tl', '<cmd>lua require("lsp_lines").toggle()<cr>')
-- nmap(',t',  '<Plug>PlenaryTestFile')
-- nmap('<leader>t', '<Plug>PlenaryTestFile')
nmap('<leader>a', ':Alpha<cr>')

nmap('<leader>t', ':ServerRun<cr>')
nmap('<leader>tt', ':ServerToggle<cr>')

-- nmap(',r', '<cmd>luafile dev/init.lua<cr>')
-- nmap(',w', '<cmd>lua Reload_and_run()<cr>')

-- Telescope
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')
nmap('<leader>fk', '<cmd>Telescope keymaps<cr>')

-- Nvim Tree
nmap('<c-b>', ':NvimTreeToggle<cr>')
nmap('<leader>ef', ':NvimTreeFindFile<cr>')

nmap('<c-f>', ':Format<cr>')

-- Commentary
map('', '<leader>/', ':Commentary<cr>')

-- Nvim
nmap('ss', ':split<Return><C-w>w')
nmap('sv', ':vsplit=<Return><C-w>w')
map('', '<F5>', ':set nowrap!<cr>')
imap(',,', '<Esc>')
map('', '<c-s>', ':w<cr>')
map('', '<c-q>', ':q<cr>')
map('', '<c-r>', ':source %<cr>')
nmap('dw', 'vb"_d')
nmap('U', '<cmd>redo<cr>')
-- Tabs
nmap('<s-tab>', ':tabnext<return>')
nmap('<tab>', ':tabprev<return>')
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
