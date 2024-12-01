return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {},
	keys = {
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", { "n" }, desc = "Live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", { "n" }, desc = "Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", { "n" }, desc = "Help tags" },
	},
}
