local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("dark.configs.lsp.lsp-installer")
require("dark.configs.lsp.handlers").setup()
