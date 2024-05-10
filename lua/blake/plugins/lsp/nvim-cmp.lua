return {
	"hrsh7th/nvim-cmp",
	event = "VeryLazy",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
	},
	config = function()
		require("blake.config.nvim-cmp")
	end,
}
