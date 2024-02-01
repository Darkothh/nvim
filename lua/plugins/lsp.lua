return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "eslint-lsp",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "shfmt",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
      })
    end,
  },
}
