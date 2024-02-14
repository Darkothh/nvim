return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    -- priority = 1000,
    config = function()
      require("everforest").setup({
        italics = true,
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      styles = {
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = { "italic" },
        functions = { "italic" },
        keywords = { "italic" },
        strings = { "italic" },
        variables = { "italic" },
        numbers = { "bold" },
        booleans = { "italic" },
        properties = { "italic" },
        types = { "italic" },
        operators = { "italic" },
      },
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    -- priority = 1000,
    opts = function()
      return {
        transparent = false,
      }
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = function()
      return {
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = { italic = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        transparent = true, -- do not set background color
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
      }
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
