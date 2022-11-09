local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end
local dashboard = require "alpha.themes.dashboard"

local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.hl_shortcut = "Macro"
  return b
end

local icons = require "magnus.icons"

dashboard.section.header.val = {
  "    ⠀⠀⠀⠀⠀ ⠀⠀ ＿＿＿  ",
  " 　　　　  ／＞　　フ",
  "　   　　　| 　_　 _ ",
  "　 　　　／` ミ＿xノ ",
  "　　 　 /　　　 　 | ",
  "　　　 /　 ヽ　　 ﾉ  ",
  "　 　  │　　|　|　|  ",
  "　／￣|　　 |　|　|  ",
  "　| (￣ヽ＿_ヽ_)__)  ",
  "　＼二つ             ",
}
dashboard.section.buttons.val = {
  button("f", icons.documents.Files .. "  Find file", ":Telescope find_files <CR>"),
  button("e", icons.ui.NewFile .. "  New file", ":ene <BAR> startinsert <CR>"),
  button("r", icons.ui.History .. "  Recent files", ":Telescope oldfiles <CR>"),
  button("g", icons.ui.List .. "  Find text", ":Telescope live_grep <CR>"),
  button("c", icons.ui.Gear .. "  Config", ":e ~/.config/nvim/plugin/options.lua <CR>"),
  button("u", icons.ui.CloudDownload .. "  Update", ":PackerSync<CR>"),
  button("q", icons.ui.SignOut .. "  Quit", ":qa<CR>"),
}

dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Macro"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
