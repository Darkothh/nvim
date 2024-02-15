return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,
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
      completion = {
        -- Set to false to disable completion.
        nvim_cmp = true,

        -- Trigger completion at 2 chars.
        min_chars = 2,

        -- Where to put new notes created from completion. Valid options are
        --  * "current_dir" - put new notes in same directory as the current buffer.
        --  * "notes_subdir" - put new notes in the default notes subdirectory.
        new_notes_location = "notes_subdir",

        -- Either 'wiki' or 'markdown'.
        preferred_link_style = "wiki",

        -- Control how wiki links are completed with these (mutually exclusive) options:
        --
        -- 1. Whether to add the note ID during completion.
        -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
        -- Mutually exclusive with 'prepend_note_path' and 'use_path_only'.
        prepend_note_id = true,
        -- 2. Whether to add the note path during completion.
        -- E.g. "[[Foo" completes to "[[notes/foo|Foo]]" assuming "notes/foo.md" is the path of the note.
        -- Mutually exclusive with 'prepend_note_id' and 'use_path_only'.
        prepend_note_path = false,
        -- 3. Whether to only use paths during completion.
        -- E.g. "[[Foo" completes to "[[notes/foo]]" assuming "notes/foo.md" is the path of the note.
        -- Mutually exclusive with 'prepend_note_id' and 'prepend_note_path'.
        use_path_only = false,
      },
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
