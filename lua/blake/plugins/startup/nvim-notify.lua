return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	opts = {
		background_colour = "#000000",
		fps = 60,
	},
	config = function()
		vim.notify = require("notify")
	end,
}
