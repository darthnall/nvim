return {
	"metalelf0/jellybeans-nvim",
	dependencies = { "nvim-lualine/lualine.nvim", "rktjmp/lush.nvim" },
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme jellybeans-nvim")
        vim.g.jellybeans_use_term_italics = 1
	end,
}
