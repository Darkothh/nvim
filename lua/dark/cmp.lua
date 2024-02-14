local icons = require("dark.icons").opts.icons
return {
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "onsails/lspkind.nvim",
      "windwp/nvim-ts-autotag",
      "windwp/nvim-autopairs",
    },
    config = function()
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local lspkind = require("lspkind")

      require("nvim-autopairs").setup()

      -- Integrate nvim-autopairs with cmp
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

      -- Load snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          -- ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
          -- ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<C-u>"] = cmp.mapping.scroll_docs(4), -- scroll up preview
          ["<C-d>"] = cmp.mapping.scroll_docs(-4), -- scroll down preview
          ["<C-Space>"] = cmp.mapping.complete({}), -- show completion suggestions
          ["<C-e>"] = cmp.mapping.abort(), -- close completion window
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
        -- sources for autocompletion
        sources = cmp.config.sources({
          { name = "codeium", group_index = 1, priority = 100 }, -- Copilot suggestions
          { name = "nvim_lsp" }, -- lsp
          { name = "buffer", max_item_count = 5 }, -- text within current buffer
          { name = "path", max_item_count = 3 }, -- file system paths
          { name = "luasnip", max_item_count = 3 }, -- snippets
        }),
        sorting = {
          comparators = {},
        },
        -- Enable pictogram icons for lsp/autocompletion
        formatting = {
          fields = { "kind", "abbr" },
          format = function(entry, vim_item)
            -- vim_item.kind = string.format("%s", icons.kind[vim_item.kind])
            -- vim_item.kind = string.format('%s %s', icons.kind[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            vim_item.kind = string.format("%s %s", icons.kinds[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            vim_item.menu = ({
              nvim_lua = "",
              treesitter = "",
            })[entry.source.name]
            return vim_item
          end,
        },

        experimental = {
          ghost_text = true,
        },
      })
    end,
  },
}
