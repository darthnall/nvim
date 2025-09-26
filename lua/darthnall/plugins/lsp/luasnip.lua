return {
	"L3MON4D3/LuaSnip",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lsp",
	},
	build = "make install_jsregexp",
	opts = {
		update_events = { "TextChanged", "TextChangedI" },
		region_check_events = { "CursorMoved", "CursorHold", "InsertEnter" },
	},
}
