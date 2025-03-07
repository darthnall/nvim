return {
	"luckasRanarison/tailwind-tools.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {},
	keys = {
		{
			"<leader>tce",
			"<cmd>TailwindConcealEnable<cr>",
			{ "n" },
			desc = "Tailwind conceal enable",
		},
		{
			"<leader>tcd",
			"<cmd>TailwindConcealDisable<cr>",
			{ "n" },
			desc = "Tailwind conceal disable",
		},
		{
			"<leader>tc",
			"<cmd>TailwindConcealToggle<cr>",
			{ "n" },
			desc = "Tailwind conceal toggle",
		},
		{
			"<leader>tte",
			"<cmd>TailwindColorEnable<cr>",
			{ "n" },
			desc = "Tailwind color enable",
		},
		{
			"<leader>ttd",
			"<cmd>TailwindColorDisable<cr>",
			{ "n" },
			desc = "Tailwind color disable",
		},
		{
			"<leader>tt",
			"<cmd>TailwindColorToggle<cr>",
			{ "n" },
			desc = "Tailwind color toggle",
		},
		{
			"<leader>ts",
			"<cmd>TailwindSort<cr>",
			{ "n" },
			desc = "Tailwind sort buffer",
		},
		{
			"<leader>tl",
			"<cmd>TailwindNextClass<cr>",
			{ "n" },
			desc = "Tailwind next buffer",
		},
		{
			"<leader>th",
			"<cmd>TailwindPrevClass<cr>",
			{ "n" },
			desc = "Tailwind previous class",
		},
	},
}
