-- Live LSP renaming
return {
	"saecki/live-rename.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>gr", require("live-rename").rename, { desc = "Live rename" })
	end,
}
