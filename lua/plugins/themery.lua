return {
	'zaldih/themery.nvim',
	config = function() require('themery').setup({
		themes = { 'brogrammer', 'ayu' },
		themeConfigFile = '~/.config/nvim/lua/theme.lua',
		livePreview = true,
	}) end,
}
