return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	build = ":TSUpdate",
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"css",
				"html",
				"javascript",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"typescript",
				"vim",
				"vimdoc",
				"dockerfile",
				"gitcommit",
				"gitignore",
				"htmldjango",
				"http",
				"nginx",
				"rust",
				"toml",
				"yaml",
			},
			indent = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = false,
					node_incremental = false,
					scope_incremental = false,
					node_decremental = false,
				},
			},
		})
	end,
}
