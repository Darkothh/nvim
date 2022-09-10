local breadcrump_sep = " ⟩ "

local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

require('lualine').setup {
  options = {
    globalstatus = true,
    theme = 'auto',
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      {
        "filename",
        path = 1,
        separator = vim.trim(breadcrump_sep),
        fmt = function(str)
          local path_separator = package.config:sub(1, 1)
          return str:gsub(path_separator, breadcrump_sep)
        end
      },
      -- { "aerial", dense = true, sep = breadcrump_sep },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      {
        "encoding",
        cond = function()
          local fenc = vim.opt.fenc:get()
          return string.len(fenc) > 0 and string.lower(fenc) ~= "utf-8"
        end,
      },
      "filetype",
      "master",
      {
        'diff',
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        diff_color = {
          added = { fg = colors.blue },
          modified = { fg = colors.violet },
          removed = { fg = colors.red },
        },
      },
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        diagnostics_color = {
          color_error = { fg = colors.red },
          color_warn = { fg = colors.yellow },
          color_info = { fg = colors.cyan },
        },
      },
      {
        'branch',
        icon = '',
        color = { fg = colors.violet, gui = 'bold' },
      },
    },
    lualine_z = { "location" },
  },
}
