return {
	{ 'williamboman/mason.nvim', 
	config = function() require("mason").setup({
		pip = {
			upgrade_pip = true,
		},
		ui = {
        		icons = {
        			package_installed = "✓",
                		package_pending = "➜",
                		package_uninstalled = "✗",
            			}
        	},
	}) end,	
	dependencies =	{ 
	{ 'mfussenegger/nvim-dap' },
	{ 'rcarriga/nvim-dap-ui' },
	{ 'jayp0521/mason-nvim-dap.nvim' },
	{ 'mfussenegger/nvim-lint' },
	{ 'mhartington/formatter.nvim' },
	},},
}

