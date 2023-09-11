return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✔️",
                    package_pending = "‼️",
                    package_uninstalled = "❌",
                },
            },
        })
        mason_lspconfig.setup({
            ensure_installed = {
                -- LSPs
                "html",
                "cssls",
                "lua_ls",
                "emmet_ls",
                "prismals",
                "pyright",
                -- DAPs
                -- Linters
            },
            automatic_installation = true,
        })
    end,
}
