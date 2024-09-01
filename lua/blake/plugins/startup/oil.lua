return {
	"stevearc/oil.nvim",
	lazy = false,
	priority = 998,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{ "-", "<cmd>Oil<cr>", { "n" }, desc = "Open parent dir" },
	},
}
