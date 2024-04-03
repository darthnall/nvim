return {
	{
		"williamboman/mason.nvim",
		event = { "UIEnter" },
		dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
        lazy = true,
		opts = {
			auto_install = true,
            ensure_installed = {
                "pyright",
                "ruff-lsp",
                "htmx-lsp",
                "json-lsp",
            },
		},
	},
	{
		"neovim/nvim-lspconfig",
        lazy = true,
        event = { "UIEnter *.*" },
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
            })

            --- Web
            lspconfig.htmx.setup({})
            lspconfig.tailwindcss.setup({})
            lspconfig.jsonls.setup({})


			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
