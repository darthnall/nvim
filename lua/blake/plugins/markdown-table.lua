return {
	"kiran94/edit-markdown-table.nvim",
	opts = {},
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter" },
		{
			"stevearc/dressing.nvim",
			opts = {
				input = {
					enabled = true,
					start_in_insert = true,
					win_options = {
						winblend = 0,
						wrap = true,
					},
				},
			},
		},
	},
	cmd = { "EditMarkdownTable" },
}
