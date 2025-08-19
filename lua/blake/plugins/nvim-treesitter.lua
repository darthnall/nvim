return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	build = ":TSUpdate",
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"cpp",
				"css",
				"dockerfile",
				"gitcommit",
				"gitignore",
				"html",
				"htmldjango",
				"http",
				"javascript",
				"lua",
				"markdown",
				"markdown_inline",
				"nginx",
				"python",
				"query",
				"rust",
				"toml",
				"typescript",
				"vim",
				"vimdoc",
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
