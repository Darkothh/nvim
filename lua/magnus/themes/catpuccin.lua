vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
	transparent_background = false,
	term_colors = true,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {"italic"},
		keywords = {},
		strings = {},
		variables = {"italic"},
		numbers = {},
		booleans = { "italic" },
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		nvimtree = true,
    notify = true,
	},
	color_overrides = {},
	highlight_overrides = {},
})

