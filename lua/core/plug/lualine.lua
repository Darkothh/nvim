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
  },

  insert = {
    a = { fg = colors.darkblue, bg = colors.violet },
  },
  visual = {
    a = { fg = colors.black, bg = colors.cyan },
  },
  replace = {
    a = { fg = colors.black, bg = colors.red },
  },
}
local ll = require('lualine')

ll.setup {
  options = {
    globalstatus = true,
    theme = bubbles_theme,
    disabled_filetypes = {},
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {
      {
        'mode',
        padding = { right = 1, left = 1 }
      },
      -- { navic.get_location, cond = navic.is_available },
      { function()
        return '﮼'
      end,
        separator = { right = icons.sep.leftSep },
        padding = 0,
      },
    },
    lualine_b = {
      {
        'branch',
        icon = '',
        color = { fg = colors.violet, gui = 'bold' },
      },
      {
        'diff',
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        diff_color = {
          added = { fg = colors.blue },
          modified = { fg = colors.violet },
          removed = { fg = colors.red },
        },
      },
    },
    lualine_c = {},
    lualine_x = {
    },
    lualine_y = {
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
      { 'filetype' },
    },
    lualine_z = {
      {
        function()
          return icons.random.text2
        end,
        separator = { left = icons.sep.rightBub },
        padding = 0
      },
      { '%l:%c',
        padding = 1,
      },
      { '%p%%',
        padding = { left = 0, right = 1 },
      },
    },
  },
}
