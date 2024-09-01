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
		{ "<leader>tt", ":TailwindColorToggle<CR>", mode = "n", desc = "Toggle tailwind colors" },
		{ "<leader>ts", ":TailwindSort<CR>", mode = "n", desc = "Sort tailwind classes" },
	},
}
