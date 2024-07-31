return {
	"luckasRanarison/tailwind-tools.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local keymap = vim.keymap
		require("tailwind-tools").setup({
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
		})
		keymap.set("n", "<leader>T", ":TailwindColorToggle<CR>", { desc = "Toggle tailwind colors." })
		keymap.set("n", "<leader>tws", ":TailwindSort<CR>", { desc = "Sort all tailwind classes in all buffers." })
	end,
}
