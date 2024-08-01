return {
	"f-person/git-blame.nvim",
	event = "VeryLazy",
	opts = {
		enabled = false,
	},
	keys = {
		{ "<leader>Gb", ":GitBlameToggle<CR>", mode = "n", desc = "Toggle git blame" },
		{ "<leader>Ge", ":GitBlameEnable<CR>", mode = "n", desc = "Enable git blame" },
		{ "<leader>Gd", ":GitBlameDisable<CR>", mode = "n", desc = "Disable git blame" },
	},
}
