-- Automatically closes quotes, double-quotes, parenthesis, etc.
return {
	"altermo/ultimate-autopair.nvim",
	event = "InsertEnter",
	opts = {
		cmap = false,
	},
}
