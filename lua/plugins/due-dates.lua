return {
	{ 'NFrid/due.nvim', 
	config = function() require('due_nvim').setup({
		use_clock_time = true,
		default_due_time = 'midnight',
		}) end,
	},
}
