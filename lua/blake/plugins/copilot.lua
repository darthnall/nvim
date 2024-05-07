return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
        event = { "InsertEnter" },
        dependencies = { "zbirenbaum/copilot-cmp" },
		opts = {
			panel = {
				auto_refresh = true,
			},
		},
	},
	{
		"zbirenbaum/copilot-cmp",
        cmd = "Copilot",
        event = { "InsertEnter" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
