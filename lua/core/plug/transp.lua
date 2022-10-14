require("transparent").setup({
  enable = true,
  extra_groups = { -- table/string: additional groups that should be cleared
    "hl-Title",
    "hl-LineNr",
  },
  exclude = {}, -- table: groups you don't want to clear
})
