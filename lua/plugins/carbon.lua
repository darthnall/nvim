return {
	{ 'SidOfc/carbon.nvim',
	config = function() require('carbon').setup({
		settings
		}) end,
	dependencies = { 'nvim-tree/nvim-web-devicons',
		config = function() require('nvim-web-devicons').setup({
			override_by_filename = { 
				[ '.env' ] = { 
					icon = '§',
					color = '#0000af',
					cterm_color = '19',
					name = 'Env',
					},
				},
			}) end,
		},
	},
}
