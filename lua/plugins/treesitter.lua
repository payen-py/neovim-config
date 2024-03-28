local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = {
		"c",
		"cpp",
		"lua",
		"vim",
		"vimdoc",
		"python",
		"cmake",
		"java",
		"javascript",
		"html",
		"bash",
		"json",
		"yaml",
		"regex",
	},
	highlight = { enable = true },
	indent = { enable = true },

	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
	},
})
