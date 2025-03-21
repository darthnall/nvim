-- Very colorful colorscheme
return {
	"https://gitlab.com/bartekjaszczak/finale-nvim",
	dependencies = { { "nvim-lualine/lualine.nvim", opts = { theme = "finale" } } },
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("finale")
	end,
}
