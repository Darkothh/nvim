local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function imap(shortcut, command)
  map("i", shortcut, command)
end

local function nmap(shortcut, command)
  map("n", shortcut, command)
end

vim.g.mapleader = " "

nmap("x", '"_x')
-- nmap('p', '"0p')
nmap("-", "<C-x>")
nmap("+", "<C-a>")
nmap("<C-a>", "gg<S-v>G")

nmap("<leader>j", '"_d')

map("v", "<", "<gv")
map("v", ">", ">gv")
nmap("<C-l>", "<c-w>l")
nmap("<C-k>", "<c-w>k")
nmap("<C-j>", "<c-w>j")
nmap("<C-h>", "<c-w>h")

-- nnoremap <silent> <C-Space> <Cmd>NvimTmuxNavigateNext<CR>
-- nnoremap <silent> <C-\> <Cmd>NvimTmuxNavigateLastActive<CR>
-- nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
-- nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
-- nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
-- nnoremap <silent>  <Cmd>NvimTmuxNavigateRight<CR>
nmap("<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>")
nmap("<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>")
nmap("<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>")
nmap("<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>")

nmap("ss", ":split<Return>")
nmap("sv", ":vsplit<Return>")
nmap("<C-w><left>", "<C-w>>")
nmap("<C-w><right>", "<C-w><")
nmap("<C-w><up>", "<C-w>+")
nmap("<C-w><down>", "<C-w>-")

keymap.set("n", "<C-j", function()
  vim.diagnostic.goto_next()
end, opts)

vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

-- vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
-- vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
-- vim.keymap.set("n", "<leader>fc", require("telescope.builtin").colorscheme, { desc = "View Colorschemes" })
-- vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })
-- vim.keymap.set("n", "<leader>fs", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
-- vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
-- vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- Nvim
map("", "<F5>", ":set nowrap!<cr>")
imap(",,", "<Esc>")
map("", "<c-s>", ":w<cr>")
map("", "<c-q>", ":q<cr>")
map("", "<c-r>", ":source %<cr>")
nmap("dw", 'vb"_d')
nmap("U", "<cmd>redo<cr>")
-- Tabs
nmap("<tab>", ":tabnext<return>")
nmap("<s-tab>", ":tabprev<return>")
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
