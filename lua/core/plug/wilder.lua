local wilder = require("wilder")

wilder.setup({modes =  {':', '/', '?'}})

-- call wilder#setup({'modes': [':', '/', '?']})

-- call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
--             \ 'highlights': {
--         \ 'border': 'Normal',
--         \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#b9c960'}]),
--         \ },
--         \ 'highlighter': wilder#basic_highlighter(),
--         \ 'left': [
--     \ ' ', wilder#popupmenu_devicons(),
--   \ ],
--         \ 'right': [
--     \ ' ', wilder#popupmenu_scrollbar(),
--   \ ],
--       \ 'border': 'rounded',
--   \ }),
--   \ {}))
