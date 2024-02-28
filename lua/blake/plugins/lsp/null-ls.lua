return {
    "nvimtools/none-ls.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim" },
    event = "UIEnter",
    config = function()
        require("blake.config.null-ls")
    end,
}
