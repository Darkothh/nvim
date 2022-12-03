local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("magnus.plugins.lsp.lsp-installer")
require("magnus.plugins.lsp.handlers").setup()
require('magnus.plugins.lsp.null-ls')
