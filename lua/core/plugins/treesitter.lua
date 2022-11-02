if not pcall(require, "nvim-treesitter") then
  return
end

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "html",
    "css",
    "query",
    "lua",
    "vim",
    "javascript",
    "json",
    "markdown",
    "python",
    "bash",
    "typescript",
  },
  highlight = {
    enable = true,
    disable = { "html", "css" },
  },
  markid = { enable = true },
  rainbow = {
    enable = true,
    extend_mode = true,
    max_file_lines = nil,
  },
  indent = { enable = true },
  autopairs = { enable = true },
  autotag = { enable = true },
}
