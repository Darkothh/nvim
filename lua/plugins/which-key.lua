return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>G"] = {
          name = "+Go file/definition",
          f = { "gf", "Go file in current tab" },
          F = { "<C-W>gf", "Go file in new tab" },
          s = { "<C-W>f", "go file in split window" },
          v = { "<C-W>vgf", "Go file in vertical window" },
          d = { "<cmd>Telescope lsp_definitions<cr>", "Go definition's" },
        },
      },
    },
  },
}
