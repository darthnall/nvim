-- Directory navigation and file manipulation
return {
	"stevearc/oil.nvim",
	lazy = false,
	priority = 998,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		{
			"stevearc/dressing.nvim",
			opts = {
				input = {
					enabled = true,
					start_in_insert = false,
					win_options = {
						winblend = 0,
						wrap = true,
					},
				},
			},
		},
	},
	opts = {},
	keys = {
		{ "-", "<cmd>Oil<cr>", { "n" }, desc = "Open parent dir" },
	},
}
