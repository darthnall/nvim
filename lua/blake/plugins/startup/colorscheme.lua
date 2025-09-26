-- Very colorful colorscheme
return {
	"https://gitlab.com/bartekjaszczak/finale-nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd.colorscheme("finale")
	end,
}
