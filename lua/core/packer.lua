vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
return
end

packer.init({
  display = {
    open_fn = require('packer.util').float
  },
})

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use 'tpope/vim-commentary'

  use { 'Everblush/everblush.nvim', as = 'everblush' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()
      require('core.plug.nvim-tree')
    end,
  }
  -- Status Line and Tabs
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      { 'kyazdani42/nvim-web-devicons', opt = true },
      {'akinsho/bufferline.nvim',
      tag = "v2.*",
      config = function()
        require("bufferline").setup{}
      end,
    },
    },
    config = function()
      require('core.plug.lualine')
    end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('core.plug.autopairs')
    end,
  }

  -- Highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = { 'p00f/nvim-ts-rainbow' },
    run = ':TSUpdate',
    config = function()
    require('core.plug.treesitter')
    end,
  }

  -- Autocomplete and lsp
  use {
    'hrsh7th/nvim-cmp',
    config = function ()
      require("core.plug.cmp")
    end,
  }
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

end)
