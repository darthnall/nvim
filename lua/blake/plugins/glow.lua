return {
    "ellisonleao/glow.nvim",
    ft = "markdown",
    opts = {},
    config = function()
        vim.keymap.set("n", "<leader>g", ":Glow<CR>", { desc = "Preview open markdown buffer" })
    end,
}
