local utils = require("utils.director")
return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BuggerLineCycleNext<CR>", desc = "Next Tab" },
      { "<S-Tab>", "<Cmd>BuggerLineCyclePrev<CR>", desc = "Prev Tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  {
    "willthbill/opener.nvim",
    opts = {},
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
████████▄     ▄████████    ▄████████    ▄█   ▄█▄  ▄████████  ▄██████▄  ████████▄     ▄████████ 
███   ▀███   ███    ███   ███    ███   ███ ▄███▀ ███    ███ ███    ███ ███   ▀███   ███    ███ 
███    ███   ███    ███   ███    ███   ███▐██▀   ███    █▀  ███    ███ ███    ███   ███    █▀  
███    ███   ███    ███  ▄███▄▄▄▄██▀  ▄█████▀    ███        ███    ███ ███    ███  ▄███▄▄▄     
███    ███ ▀███████████ ▀▀███▀▀▀▀▀   ▀▀█████▄    ███        ███    ███ ███    ███ ▀▀███▀▀▀     
███    ███   ███    ███ ▀███████████   ███▐██▄   ███    █▄  ███    ███ ███    ███   ███    █▄  
███   ▄███   ███    ███   ███    ███   ███ ▀███▄ ███    ███ ███    ███ ███   ▄███   ███    ███ 
████████▀    ███    █▀    ███    ███   ███   ▀█▀ ████████▀   ▀██████▀  ████████▀    ██████████ 
                          ███    ███   ▀                                                       

    ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "t" },
          { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
          { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "y" },
          { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
          { action = "e " .. utils.directoryes.notes, desc = " Notes",          icon = " ", key = "n" },
          { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
          { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
          { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
        },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      strict = true,
      override_by_extension = {
        astro = {
          icon = "",
          color = "#EF8547",
          name = "astro",
        },
      },
    },
  },
}
