require("github-theme").setup({
  theme_style = "dark",
  comment_style = 'italic',
  function_style = "italic",
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  colors = { hint = "white", error = "#ff0000" },

  overrides = function(c)
    return {
      DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
      TSField = {},
    }
  end
})
