return {
	"nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {},
    config = function()
        require("nvim-treesitter.configs").setup({
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
