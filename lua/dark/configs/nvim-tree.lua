local icons = require "dark.plugins.icons".ui
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = icons.Hint,
      info = icons.Info,
      warning = icons.Warn,
      error = icons.Error,
    }
  },
})
