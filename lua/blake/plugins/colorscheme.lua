return { 
    { "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
        require("ayu").setup({
            overrides = {
                FoldColumn = { bg = "None" },
            },
        })
        vim.cmd("colorscheme ayu")
    end,
    },
}
