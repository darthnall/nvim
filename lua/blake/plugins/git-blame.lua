-- Inline git blame
return {
	"f-person/git-blame.nvim",
	event = "VeryLazy",
	opts = {
		enabled = false,
	},
	keys = {
		{ "<leader>Gg", "<cmd>GitBlameToggle<cr>", { "n" }, desc = "Toggle git blame" },
		{ "<leader>Ge", "<cmd>GitBlameEnable<cr>", { "n" }, desc = "Enable git blame" },
		{ "<leader>Gd", "<cmd>GitBlameDisable<cr>", { "n" }, desc = "Disable git blame" },
	},
}
