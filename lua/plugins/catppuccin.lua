require("catppuccin").setup({
	integrations = {
		nvimtree = true,
		treesitter = true,
		ts_rainbow = true,
		mason = true,
		cmp = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
			inlay_hints = {
				background = true,
			},
		},
		gitsigns = true,
		telescope = {
			enabled = true,
			-- style = "nvchad"
		},
		markdown = true,
	},
})
