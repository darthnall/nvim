return {
	"f-person/git-blame.nvim",
	event = "VeryLazy",
	opts = {
		enabled = false,
	},
	keys = {
		{ "<leader>Gb", "<cmd>GitBlameToggle<cr>", mode = "n", desc = "Toggle git blame" },
		{ "<leader>Ge", "<cmd>GitBlameEnable<cr>", mode = "n", desc = "Enable git blame" },
		{ "<leader>Gd", "<cmd>GitBlameDisable<cr>", mode = "n", desc = "Disable git blame" },
	},
}
