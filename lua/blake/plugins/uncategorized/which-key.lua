return {
    "folke/which-key.nvim",
    lazy = false,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = require("blake.config.which-key.opts"),
}