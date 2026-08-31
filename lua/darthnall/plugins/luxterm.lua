return {
	"LuxVim/nvim-luxterm",
	event = "VeryLazy",
	opts = {
		manager_width = 0.8,
		manager_height = 0.8,
		preview_enabled = true,
		auto_hide = true,
	},
	keys = {
		{
			"<leader>t",
			":LuxtermToggle<CR>",
			desc = "Toggle LuxTerm",
		},
	},
}
