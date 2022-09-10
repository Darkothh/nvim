local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

lsp_installer.setup {}

local opts = {
  on_attach = require("core.plug.lsp.handlers").on_attach,
  capabilities = require("core.plug.lsp.handlers").capabilities,
}

lspconfig.sumneko_lua.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}

lspconfig.tsserver.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
}

lspconfig.html.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
}

lspconfig.cssls.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
}

lspconfig.vimls.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
}

lspconfig.emmet_ls.setup {
  filetypes = { 'html' },
}

lspconfig.stylelint_lsp.setup {
  settings = {
    stylelintplus = {
      autoFixOnSave = true,
      autoFixOnFormat = true,
      -- other settings...
    }
  },
}
