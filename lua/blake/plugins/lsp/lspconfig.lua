return {
    "neovim/nvim-lspconfig",
    event = { "VeryLazy" },
    dependiencies = { "williamboman/mason-lspconfig.nvim", },
    config = function()
        local on_attach = function(client, bufnr)
            if client.name == 'ruff_lsp' then
                client.server_capabilities.hoverProvider = false
            end
        end
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        --- Lua ---
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
            capabilities = capabilities,
        })
        --- Python
        lspconfig.pyright.setup({
            settings = {
                pyright = { disableOragnizeImports = true },
                python = {
                    analysis = {
                        ignore = { "*" },
                    },
                },
            },
        })
        lspconfig.ruff_lsp.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        --- Web
        lspconfig.htmx.setup({
            capabilities = capabilities,
        })
        lspconfig.tailwindcss.setup({
            capabilities = capabilities,
        })
        lspconfig.jsonls.setup({
            capabilities = capabilities,
        })


        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
}
