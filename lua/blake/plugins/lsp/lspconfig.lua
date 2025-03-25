return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependiencies = {
		"hrsh7th/nvim-cmp",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	opts = {},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.htmx.setup({
			capabilities = capabilities,
		})

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

		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
		})

		lspconfig.basedpyright.setup({
			capabilities = capabilities,
			python = {
				analysis = {
					ignore = { "*" },
				},
			},
		})

		lspconfig.ruff.setup({
			init_options = {
				settings = {
					configurationPreference = "filesystemFirst",
					lineLength = 88,
					fixAll = true,
					organizeImports = true,
					showSyntaxErrors = true,
					logLevel = "debug",
					codeAction = {
						disableRuleComment = {
							enable = true,
						},
						fixViolation = {
							enable = true,
						},
					},
					lint = {
						enable = true,
						select = { "E4", "E7", "E9", "F", "B", "Q" },
					},
					format = {
						enable = true,
						preview = true,
					},
				},
			},
			capabilities = capabilities,
		})

		lspconfig.biome.setup({
			capabilities = capabilities,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if client == nil then
					return
				end
				if client.name == "ruff" then
					client.server_capabilities.hoverProvider = false
				end
			end,
			desc = "LSP: Disable hover capability from Ruff",
		})
	end,
}
