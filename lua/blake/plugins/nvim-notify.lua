-- Makes notifications show up in floating windows inside of cli
return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	opts = {
		background_colour = "#030303",
		fps = 60,
	},
	config = function()
		vim.notify = require("notify")
	end,
}
