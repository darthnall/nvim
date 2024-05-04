return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
        dependencies = { "zbirenbaum/copilot-cmp" },
		opts = {
			panel = {
				auto_refresh = true,
			},
		},
	},
	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
