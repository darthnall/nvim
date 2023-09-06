return { 'nvim-treesitter/nvim-treesitter', 
	config = function() require('nvim-treesitter.configs').setup({
		ensure_installed = { 'bash', 'csv', 'dockerfile', 'html', 'json5', 'lua', 'python', },
		highlight = { enable = true },
		indent = { enable = true },
	}) end,
}
