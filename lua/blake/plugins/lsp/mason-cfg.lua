return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
        auto_install = true,
        ensure_installed = {
            "pyright",
            "ruff_lsp",
            "htmx",
            "jsonls",
        },
    }
}
