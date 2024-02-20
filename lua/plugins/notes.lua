return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      disable_front_matter = true,
      notes_subdir = "notes",
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
      -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
          overrides = {
            notes_subdir = "notes",
          },
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>n"] = {
          name = "+Notes",
          n = { "<cmd>ObsidianNew<cr>", "New note" },
          s = { "<cmd>ObsidianQuickSwitch<cr>", "Quick switch to a note" },
          r = { "<cmd>ObsidianRename<cr>", "Rename note" },
          f = { "<cmd>ObsidianFollowLink<cr>", "Follow link" },
          l = { "<cmd>ObsidianLinkNew<cr>", "Create a new link" },
          t = { "<cmd>ObsidianTemplate<cr>", "Open template window" },
        },
      },
    },
  },
}
