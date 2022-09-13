local icons = require "core.icons"
local colors = {
  bg        = '#303030',
  fg        = '#bbc2cf',
  lightGrey = '#202328',
  grey      = '#9b9b9b',
  yellow    = '#ECBE7B',
  cyan      = '#008080',
  darkblue  = '#081633',
  green     = '#98be65',
  orange    = '#FF8800',
  violet    = '#a9a1e1',
  violet2   = '#7272AB',
  pruebaFg  = '#12151B',
  pruebaMod = '#7272AB',
  pruebaBg  = '#12151B',
  magenta   = '#c678dd',
  blue      = '#51afef',
  white     = '#ffffff',
  red       = '#ec5f67',
  black     = '#080808',
}


local bubbles_theme = {
  normal = {
    a = { fg = colors.white, bg = colors.blue },
    b = { fg = colors.white, bg = colors.pruebaMod },
    c = { fg = colors.black, bg = colors.pruebaBg },
    x = { fg = colors.white, bg = colors.green },
  },

  insert = { a = { fg = colors.darkblue, bg = colors.violet } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    -- a = { fg = colors.white, bg = colors.bg },
    -- b = { fg = colors.white, bg = colors.bg },
    -- c = { fg = colors.black, bg = colors.bg },
  },
}
local ll = require('lualine')
ll.setup {
  options = {
    globalstatus = true,
    theme = bubbles_theme,
    disabled_filetypes = { 'packer', 'NvimTree' },
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {
      {
        'mode',
        padding = { right = 1, left = 1 }
      },
      { function()
        return '﮼'
      end,
        separator = { right = icons.sep.leftSep },
        padding = 0,
      },
    },
    lualine_b = {
      {
        'filetype',
        icon_only = true,
      },
      {
        "filename",
        path = 0,
        padding = { left = 0 },
        separator = { right = icons.sep.leftSep, vim.trim(icons.sep.breadcrump_sep) },
        fmt = function(str)
          local path_separator = package.config:sub(1, 1)
          return str:gsub(path_separator, icons.sep.breadcrump_sep)
        end,
      },
    },
    lualine_c = {},
    lualine_x = {
      {
        function()
          return 'ﮊ'
        end,
        separator = { left = icons.sep.rightBub },
        padding = { right = 1, left = 0 }
      },
    },
    lualine_y = {},
    lualine_z = {
      { 'location', separator = { left = icons.sep.rightBub }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
-- sections = {
--   lualine_a = { function() return '﮼' end },
--   lualine_b = {
--     {
--       'filetype',
--       icon_only = true,
--       separator = {left = ''},
--     },
--     {
--       "filename",
--       path = 0,
--       separator = vim.trim(breadcrump_sep),
--       padding = {left = 0},
--       fmt = function(str)
--         local path_separator = package.config:sub(1, 1)
--         return str:gsub(path_separator, breadcrump_sep)
--       end,
--     },
--     -- { "aerial", dense = true, sep = breadcrump_sep },
--   },
--   lualine_c = {},
--   lualine_x = {},
--   lualine_y = {
--     {
--       "encoding",
--       cond = function()
--         local fenc = vim.opt.fenc:get()
--         return string.len(fenc) > 0 and string.lower(fenc) ~= "utf-8"
--       end,
--     },
--     "filetype",
--     "master",
--     {
--       'diff',
--       symbols = { added = ' ', modified = ' ', removed = ' ' },
--       diff_color = {
--         added = { fg = colors.blue },
--         modified = { fg = colors.violet },
--         removed = { fg = colors.red },
--       },
--     },
--     {
--       'diagnostics',
--       sources = { 'nvim_diagnostic' },
--       symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
--       diagnostics_color = {
--         color_error = { fg = colors.red },
--         color_warn = { fg = colors.yellow },
--         color_info = { fg = colors.cyan },
--       },
--     },
--     -- {
--     --   'branch',
--     --   icon = '',
--     --   color = { fg = colors.violet, gui = 'bold' },
--     -- },
--   },
--   lualine_z = { "location" },
-- },
--   inactive_sections = {
--   lualine_a = {'branch'},
--   lualine_b = {'branch'},
--   lualine_c = {'branch'},
--   lualine_x = {'branch'},
--   lualine_y = {'branch'},
--   lualine_z = {'branch'},
-- },
-- }
