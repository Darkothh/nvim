-- local colors = {
--   blue   = '#80a0ff',
--   cyan   = '#79dac8',
--   black  = '#080808',
--   white  = '#c6c6c6',
--   red    = '#ff5189',
--   violet = '#d183e8',
--   grey   = '#303030',
-- }

local colors2 = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  green = '#b9c960',
  orange = '#cd7e4b',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
  bk = '#1d1f21', --set color for background
  gris = '#282828',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors2.black, bg = colors2.green },
    b = { fg = colors2.white, bg = colors2.grey },
    c = { fg = colors2.bk, bg = colors2.bk },
  },

  insert = { a = { fg = colors2.black, bg = colors2.blue } },
  visual = { a = { fg = colors2.black, bg = colors2.orange } },
  replace = { a = { fg = colors2.black, bg = colors2.red } },

  inactive = {
    a = { fg = colors2.white, bg = colors2.black },
    b = { fg = colors2.white, bg = colors2.black },
    c = { fg = colors2.black, bg = colors2.black },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { {'filename',
      path = 1,
    }, 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = { 'diagnostics' },
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {
        lualine_a = { {'tabs',
        mode = 2,
        max_length = 100,
        }
      }
    },
  extensions = {},
}
