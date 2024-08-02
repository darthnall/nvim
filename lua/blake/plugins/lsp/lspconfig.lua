return {
	"neovim/nvim-lspconfig",
	event = { "InsertEnter" },
	dependiencies = { "williamboman/mason-lspconfig.nvim" },
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
		--- Python
		lspconfig.ruff.setup({
            filetypes = { "python" },
			capabilities = capabilities,
		})
		--- Web
		lspconfig.htmx.setup({
			capabilities = capabilities,
		})
		lspconfig.tailwindcss.setup({
			settings = {
				tailwindCSS = {
					lint = {
						cssConflict = "warning",
						invalidApply = "error",
						invalidConfigPath = "error",
						invalidScreen = "error",
						invalidTailwindDirective = "error",
						invalidVariant = "error",
						recommendedVariantOrder = "warning",
					},
				},
			},
			capabilities = capabilities,
		})
	end,
}
