return {
	"luckasRanarison/tailwind-tools.nvim",
	ft = { "html", "css", "javascript", "typescript" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = {
		document_color = {
			enabled = true,
			kind = "inline",
			inline_symbol = "- ",
			debounce = 200,
		},
		conceal = {
			enabled = false,
			min_length = 8,
			symbol = "*",
			highlight = {
				fg = "#388DF8",
			},
		},
	},
}
