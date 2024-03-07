return {
	"rcarriga/nvim-notify",
	lazy = false,
	opts = {
		background_colour = "#000000",
		fps = 60,
	},
	config = function()
		vim.notify = require("notify")
	end,
}
