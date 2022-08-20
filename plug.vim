" ██████╗ ██╗     ██╗   ██╗ ██████╗ 
" ██╔══██╗██║     ██║   ██║██╔════╝ 
" ██████╔╝██║     ██║   ██║██║  ███╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║
" ██║     ███████╗╚██████╔╝╚██████╔╝
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ 
                                  
call plug#begin()

  function! UpdateRemotePlugins(...)
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

" Temas "{{{
" ------------------------------------------------------------
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'liuchengxu/space-vim-dark'
" Plug 'nikolvs/vim-sunbather'
" Plug 'phanviet/vim-monokai-pro'
" Plug 'sheerun/vim-polyglot'
" Plug 'nikolvs/vim-sunbather'
" Plug 'fcpg/vim-orbital'
" Plug 'ntk148v/vim-horizon'
" Plug 'gantoreno/vim-gabriel'
Plug 'LunarVim/darkplus.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'sainnhe/edge'
Plug 'Everblush/everblush.nvim', { 'as': 'everblush' }
"}}}

" Color Preview "{{{
" ---------------------------------------------------------------------
Plug 'ap/vim-css-color'
"}}}

" Preview {{{
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"}}}

" LSP {{{
Plug 'onsails/lspkind-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'tamago324/nlsp-settings.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
"}}}

" CMP {{{
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-buffer' 
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-cmdline' 
"}}}

" Debug {{{
Plug 'mfussenegger/nvim-dap' 
Plug 'David-Kunz/jester'
" }}}

" Js prettier {{{
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
"}}}

" snippets {{{
Plug 'L3MON4D3/LuaSnip' 
Plug 'rafamadriz/friendly-snippets'
"}}}

"File Search {{{
"(sudo apt-get install ripgrep)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
"}}}

" Wilder {{{
Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
"}}}

" Pairs {{{
Plug 'windwp/nvim-ts-autotag' "https://github.com/windwp/nvim-ts-autotag
Plug 'jiangmiao/auto-pairs'
Plug 'p00f/nvim-ts-rainbow'
"}}}

" Github {{{
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" }}}

" Status Line {{{
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
" }}}

" Random {{{
Plug 'norcalli/nvim-colorizer.lua'
Plug 'andweeb/presence.nvim'
Plug 'Jorengarenar/vim-MvVis' "move code blocks
Plug 'terryma/vim-multiple-cursors'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'moll/vim-bbye'
Plug 'lewis6991/impatient.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'akinsho/toggleterm.nvim'
Plug 'folke/trouble.nvim'
Plug 'tpope/vim-eunuch'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-commentary'
" }}}

" Folding {{{
Plug 'anuvyklack/fold-preview.nvim'
Plug 'anuvyklack/pretty-fold.nvim'
Plug 'anuvyklack/keymap-amend.nvim'
" }}}

call plug#end()
