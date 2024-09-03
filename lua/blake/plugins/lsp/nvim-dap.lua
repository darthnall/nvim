return {
	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	dependencies = {
		{ "ibhagwan/fzf-lua" },
		{ "nvim-telescope/telescope-dap.nvim" },
		{ "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
	},
	keys = {
		{
			"<F5>",
			function()
				require("dap").continue()
			end,
			{ "n" },
			desc = "DAP continue",
		},
		{
			"<F10>",
			function()
				require("dap").step_over()
			end,
			{ "n" },
			desc = "DAP step over",
		},
		{
			"<F11>",
			function()
				require("dap").step_into()
			end,
			{ "n" },
			desc = "DAP step into",
		},
		{
			"<F12>",
			function()
				require("dap").step_out()
			end,
			{ "n" },
			desc = "DAP step out",
		},
		{
			"<leader>b",
			function()
				require("dap").toggle_breakpoint()
			end,
			{ "n" },
			desc = "DAP toggle breakpoint",
		},
		{
			"<leader>B",
			function()
				require("dap").set_breakpoint()
			end,
			{ "n" },
			desc = "DAP set breakpoint",
		},
		{
			"<leader>dr",
			function()
				require("dap").repl.open()
			end,
			{ "n" },
			desc = "DAP open repl",
		},
		{
			"<leader>dl",
			function()
				require("dap").run_last()
			end,
			{ "n" },
			desc = "DAP run last",
		},
	},
}
