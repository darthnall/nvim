return {
    "williamboman/mason-lspconfig.nvim",
    event = { "VeryLazy" },
    opts = {
        auto_install = true,
        ensure_installed = {
            "pyright",
            "ruff_lsp",
            "htmx",
            "jsonls",
        },
    },
}
