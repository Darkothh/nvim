local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then return end

local servers = {
  pyright = {},
  emmet_ls = {},
  html = {},
  cssls = {},
  rust_analyzer = {},
  tsserver = {},
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}

require('neodev').setup()

local opts = {
  on_attach = require("dark.configs.lsp.handlers").on_attach,
  capabilities = require("dark.configs.lsp.handlers").capabilities,
}

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = opts.capabilities,
      on_attach = opts.on_attach,
      settings = servers[server_name],
    }
  end,
}

lspconfig.emmet_ls.setup {
  filetypes = { 'html' },
}
