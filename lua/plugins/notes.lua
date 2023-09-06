return {
	'renerocksai/telekasten.nvim',
	config = function() require('telekasten').setup({
		home = vim.fn.expand('~/Documents/notes')
	}) end,
}
