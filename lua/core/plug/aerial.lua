local aerial = require("aerial")

aerial.setup({
  backends = { "lsp" },
  min_width = 35,
  max_width = 35,
  highlight_on_jump = 0,
  close_on_select = true,
  show_guides = true,
  filter_kind = {
    'Array',
    'Boolean',
    'Class',
    -- 'Constantd',
    'Constructor',
    'Enum',
    'EnumMember',
    -- 'Event',
    -- 'Field',
    -- 'File',
    'Function',
    -- 'Interface',
    -- 'Key',
    -- 'Method',
    'Module',
    -- 'Null',
    'Object',
    -- 'Package',
    -- 'Property',
    'String',
    'Struct',
    -- 'TypeParameter',
    'Variable',
    -- "Class",
    -- "Constructor",
    -- "Enum",
    -- "Function",
    -- "Interface",
    -- "Module",
    -- "Method",
    -- "Struct",
  },
  icons = {
    File          = "",
    Module        = "",
    Namespace     = ":",
    Package       = "",
    Class         = "ﴯ",
    Method        = "",
    Property      = "ﰠ",
    Field         = "ﰠ",
    Constructor   = "⌘",
    Enum          = "",
    Interface     = "",
    Function      = "",
    Variable      = "",
    Constant      = "",
    String        = "",
    Number        = "#",
    Boolean       = "",
    Array         = "",
    Object        = "",
    Key           = "",
    Null          = "␀",
    EnumMember    = "",
    Struct        = "ﳤ",
    Event         = "",
    Operator      = "",
    TypeParameter = "",
  },
})

vim.cmd([[
"hi link AerialClass Type
"hi link AerialClassIcon Special
"hi link AerialFunction Special
"hi AerialFunctionIcon guifg=#cb4b16 guibg=NONE guisp=NONE gui=NONE cterm=NONE

" There's also this group for the cursor position
"hi link AerialLine QuickFixLine
" If highlight_mode="split_width", you can set a separate color for the
" non-current location highlight
"hi AerialLineNC guibg=Gray

" hi AerialStringIcon guifg=Violet

" You can customize the guides (if show_guide=true)
"hi link AerialGuide Comment
" You can set a different guide color for each level
"hi AerialGuide1 guifg=Red
"hi AerialGuide2 guifg=Blue
]])
