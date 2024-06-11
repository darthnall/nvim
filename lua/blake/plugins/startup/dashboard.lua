return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			change_to_vcs_root = true,
			hide = {
				statusline = true,
				tabline = true,
				winbar = true,
			},
			config = {
				week_header = {
					enable = true,
				},
				center = {
					{
						icon = "",
						icon_hl = "group",
						desc = "Neovim Configuration",
						key = "c",
						key_hl = "group",
						key_format = "[%s]",
						action = "nvim ~/.config/nvim/lua/blake",
					},
					{
						icon = "",
						icon_hl = "group",
						desc = "python",
						key = "p",
						key_format = "[%s]",
						action = "python",
					},
					{
						icon = "",
						icon_hl = "group",
						desc = "Open TerminusGPS",
						key = "e",
						key_hl = "group",
						key_format = "[%s]",
						action = "",
					},
				},
				footer = {},
			},
		})
	end,
}
