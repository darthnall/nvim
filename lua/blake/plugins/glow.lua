return {
    "ellisonleao/glow.nvim",
    ft = "markdown",
    config = function()
        require("glow").setup({})
        vim.keymap.set("n", "<leader>g", ":Glow<CR>", { desc = "Preview open markdown buffer" })
    end,
}
