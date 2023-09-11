return {
    "folke/which-key.nvim",
    lazy = false,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = { 
        popup_mappings = {
            scroll_down = "<c-j>",
            scroll_up = "<c-k>",
        },
        window = {
            border = "shadow",
            winblend = 20,
        },
    },
}
