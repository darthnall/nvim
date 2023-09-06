return {	
	{ 'marciomazza/vim-brogrammer-theme', lazy = true },
	{ 'Shatur/neovim-ayu', lazy = false },
	{ 'beauwilliams/statusline.lua',
	dependencies = { 'kosayoda/nvim-lightbulb', lazy = false },
	},
	{ 'ms-jpq/coq_nvim', 
	branch = "coq",
	dependencies =
		{ 'ms-jpq/coq.artifacts', 
		branch = "artifacts",
		},
	},
}

