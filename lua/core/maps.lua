function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

vim.g.mapleader = " "

-- Packer
map('', '<c-u>', ':PackerSync<cr>')
map('', '<c-i>', ':PackerInstall<cr>')
map('', '<c-c>', ':PackerCompile<cr>')

-- Nvim Tree
nmap('<c-b>', ':NvimTreeToggle<cr>')
nmap('<leader>ef', ':NvimTreeFindFile<cr>')

-- Commentary
map('', '<leader>/', ':Commentary<cr>')

-- Nvim
nmap('ss', ':split<Return><C-w>w')
nmap('sv', ':vsplit=<Return><C-w>w')
map('', '<F5>', ':set nowrap!<cr>')
map('i', ',,', '<Esc>')
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
