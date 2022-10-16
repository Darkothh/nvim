if not pcall(require, "nvim-treesitter") then
  return
end

-- local custom_captures = {
--   ["function.call"] = "LuaFunctionCall",
--   ["function.bracket"] = "Type",
--   ["namespace.type"] = "TSNamespaceType",
-- }

local swap_next, swap_prev = (function()
  local swap_objects = {
    p = "@parameter.inner",
    f = "@function.outer",
    e = "@element",
    v = "@variable",
  }

  local n, p = {}, {}
  for key, obj in pairs(swap_objects) do
    n[string.format("<M-Space><M-%s>", key)] = obj
    p[string.format("<M-BS><M-%s>", key)] = obj
  end

  return n, p
end)()

-- require("nvim-treesitter.highlight").set_custom_captures(custom_captures)

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "html",
    "css",
    "query",
    "lua",
    "vim",
    "javascript",
    "json",
    "markdown",
    "python",
    "bash",
    "typescript",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
    disable = { "html", "css" },
    -- custom_captures = custom_captures,
  },
  markid = { enable = true },
  rainbow = {
    enable = true,
    extend_mode = true,
    max_file_lines = nil,
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
    smart_rename = {
      enable = false,
      keymaps = {
        -- mapping to rename reference under cursor
        smart_rename = "grr",
      },
    },
    navigation = {
      enable = false,
      keymaps = {
        goto_definition = "gnd", -- mapping to go to definition of symbol under cursor
        list_definitions = "gnD", -- mapping to list all definitions in current file
      },
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<M-w>", -- maps in normal mode to init the node/scope selection
      node_incremental = "<M-w>", -- increment to the upper named parent
      node_decremental = "<M-C-w>", -- decrement to the previous node
      scope_incremental = "<M-e>", -- increment to the upper scope (as defined in locals.scm)
    },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      c = "// %s",
      lua = "-- %s",
    },
  },
  textobjects = {
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]p"] = "@parameter.inner",
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[p"] = "@parameter.inner",
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@conditional.outer",
        ["ic"] = "@conditional.inner",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
        ["av"] = "@variable.outer",
        ["iv"] = "@variable.inner",
      },
    },
    indent = { enable = true },
    autopairs = { enable = true },
    autotag = { enable = true },
    swap = {
      enable = true,
      swap_next = swap_next,
      swap_previous = swap_prev,
    },
  },
}
