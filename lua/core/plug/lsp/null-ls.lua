local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local sources = {
  formatting.prettier.with {
    extra_filetypes = { "toml", "solidity" },
    extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
  },
  formatting.eslint,
  formatting.autopep8,
  -- formatting.stylua,
  formatting.clang_format,
  formatting.stylelint,
}

null_ls.setup({
  sources = sources,
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format { async = true }")
    end
  end,
})
