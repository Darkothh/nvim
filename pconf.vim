 " ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
" ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
" ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
" ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
" ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
 " ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
                                               
" Nvim-tree {{{
 " let g:auto_close = 1
 " let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ]
 " let g:nvim_tree_indent_markers = 1
 " let render.highligt_git = 1
 " let renderer.highlight_opened_files = 1
 " let g:nvim_tree_group_empty = 1
 " let g:lsp_diagnostics = 1
 "}}}
 
" Wilder {{{
call wilder#setup({'modes': [':', '/', '?']})

call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
            \ 'highlights': {
        \ 'border': 'Normal',
        \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#b9c960'}]),
        \ },
        \ 'highlighter': wilder#basic_highlighter(),
        \ 'left': [
    \ ' ', wilder#popupmenu_devicons(),
  \ ],
        \ 'right': [
    \ ' ', wilder#popupmenu_scrollbar(),
  \ ],
      \ 'border': 'rounded',
  \ }),
  \ {}))
"}}}

" Markdown {{{
let g:mkdp_auto_start = 0

let g:mkdp_auto_close = 0

let g:mkdp_refresh_slow = 0

let g:mkdp_command_for_global = 0

let g:mkdp_open_to_the_world = 0

let g:mkdp_open_ip = ''

let g:mkdp_browser = ''

let g:mkdp_echo_preview_url = 0

let g:mkdp_browserfunc = ''

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

let g:mkdp_markdown_css = ''

let g:mkdp_highlight_css = ''

let g:mkdp_port = ''

let g:mkdp_page_title = '「${name}」'

let g:mkdp_filetypes = ['markdown']"}}}

" Bracely {{{
 " let g:bracey_server_port = 5050
 " let g:bracey_server_path = 'http://192.168.100.6'
 " let g:bracey_server_log = 'C:\Users\Dylan\AppData\Local\Temp'
"}}}
