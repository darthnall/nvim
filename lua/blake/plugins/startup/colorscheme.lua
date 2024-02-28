return {
    "zootedb0t/citruszest.nvim",
    dependencies = { "nvim-lualine/lualine.nvim" },
    lazy = false,
    priority = 1000,
    config = function()
        require("citruszest").setup({
            option = {
                transparent = true,
                bold = true,
            },
        })
        vim.cmd("colorscheme citruszest")
    end,
}
