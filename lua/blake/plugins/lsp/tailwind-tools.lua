return {
	"luckasRanarison/tailwind-tools.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	ft = { "css", "html", "htmldjango", "javascript", "typescript" },
	opts = {
		document_color = {
			enabled = true,
			kind = "inline",
			inline_symbol = " ",
			debounce = 200,
		},
		conceal = {
			enabled = false,
			min_length = 8,
			symbol = "",
			highlight = {
				fg = "#388DF8",
			},
		},
	},
	keys = {
		{ "<leader>Tt", ":TailwindColorToggle<CR>", mode = "n", desc = "Toggle tailwind colors" },
		{ "<leader>Ts", ":TailwindSort<CR>", mode = "n", desc = "Sort tailwind classes" },
	},
}
