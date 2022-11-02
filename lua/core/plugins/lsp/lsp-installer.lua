local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then return end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then return end

lsp_installer.setup {}

local servers = {
  'sumneko_lua',
  'tsserver',
  'jdtls',
  'html',
  -- 'zk',
  'pyright',
  'cssls',
  'jsonls',
  'vimls',
  'clangd',
  'bashls',
  'stylelint_lsp'
}
local opts = {
  on_attach = require("core.plugins.lsp.handlers").on_attach,
  capabilities = require("core.plugins.lsp.handlers").capabilities,
}

for _, server in pairs(servers) do
  local require_ok, name = pcall(require, "core.plugins.lsp.settings." .. server)
  if require_ok then
    opts = vim.tbl_deep_extend("force", name, opts)
    -- print(P(name))
  end
  lspconfig[server].setup(opts)
end

lspconfig.emmet_ls.setup {
  filetypes = { 'html' },
}

lspconfig.efm.setup {
  sh = {
    { LintCommand = "shellcheck -f gcc -x",
      LintFormats = {
        "%f:%l:%c: %trror: %m",
        "%f:%l:%c: %tarning: %m",
        "%f:%l:%c: %tote: %m"
      }
    }
  },
}
