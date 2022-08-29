local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

lsp_installer.setup{}

	local opts = {
		on_attach = require("core.lsp.handlers").on_attach,
		capabilities = require("core.lsp.handlers").capabilities,
	}

lspconfig.sumneko_lua.setup {
  opts = opts,
}

lspconfig.tsserver.setup {
  opts = opts,
}
