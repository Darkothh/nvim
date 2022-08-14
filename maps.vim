 " ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
" ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
" ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
" ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
" ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
 " ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝                                               

let mapleader = " "

" Move selected lines{{{
" g:MvVis_mappings
vmap <S-F11> <Plug>(MvVisLeft)
vmap <S-F10> <Plug>(MvVisDown)
vmap <S-F9> <Plug>(MvVisUp)
vmap <S-F12> <Plug>(MvVisRight)
"}}}

" Nvim {{{
nnoremap <leader>d "_d
map <F5> :set nowrap!<CR> 
nnoremap x "_x
imap ,, <Esc>
tmap ,, <Esc>
" Delete a word backwards
nnoremap dw vb"_d
map <leader>h :noh<CR>
map <leader>w  :w<CR>
map <leader>ww  :wq<CR>
map <leader>q :q<CR>
map <leader>qq :q!<CR>
nnoremap U <cmd>redo<CR>


vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
" }}}

"Markdown preview {{{
nnoremap <silent> <F3> :MarkdownPreview<CR>
nnoremap <silent> <F4> :MarkdownPreviewStop<CR>
" nnoremap <silent> <F5> :Bracey<CR>
" nnoremap <silent> <F6> :BraceyStop<CR>
"}}}

" Telescope {{{
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"}}}


" Windows {{{ 
nmap ss :split<Return><C-w>w
nmap sv :vsplit=<Return><C-w>w
" Move Windows 
map e<left> <C-w>h
map e<up> <C-w>k
map e<down> <C-w>j
map e<right> <C-w>l
nmap <leader><down> :resize +5<CR>
nmap <leader><up> :resize -5<CR>
nmap <leader><right> :vertical resize +5<CR>
nmap <leader><left> :vertical resize -5<CR>
"tabs
nmap <S-Tab> :tabnext<Return>
nmap <Tab> :tabprev<Return>
"}}}

"Plug {{{
map <leader>pr :source %<CR>
map <leader>pc :PlugClean<CR>
map <leader>pi :PlugInstall<CR>
map <leader>pu :PlugUpdate<CR>
"}}}

" Nvim-tree {{{
nnoremap <leader>e :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
"}}}

" Commentary {{{
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>
"}}}

" Trouble Diagnostics {{{
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
"}}}
