return {
	"luckasRanarison/tailwind-tools.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	ft = { "css", "html", "htmldjango", "javascript", "typescript" },
	opts = {
		document_color = {
			inline_symbol = " ",
		},
		conceal = {
			min_length = 8,
			symbol = "",
		},
	},
	keys = {
		{ "<leader>tt", "<cmd>TailwindColorToggle<cr>", mode = "n", desc = "Toggle tailwind colors" },
		{ "<leader>ts", "<cmd>TailwindSort<cr>", mode = "n", desc = "Sort tailwind classes" },
	},
}
