return {
	{
		"williamboman/mason.nvim",
		event = { "UIEnter" },
		dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
		config = function()
            local mason = require("mason")
            mason.setup({
                pip = { upgrade_pip = true },
            })
        end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
        lazy = true,
		opts = {
			auto_install = true,
            ensure_installed = {
                "lua_ls",
                "pyright",
                "cssmodules_ls",
                "biome",
                "vale",
            },
		},
	},
	{
		"neovim/nvim-lspconfig",
        lazy = true,
        event = { "UIEnter *.*" },
        dependiencies = { "williamboman/mason-lspconfig.nvim", },
		config = function()
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

            --- Python ---
            lspconfig.pyright.setup({
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
	},
}
