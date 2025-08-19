return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependiencies = { "hrsh7th/nvim-cmp" },
	opts = {},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("htmx", {
			capabilities = capabilities,
		})
		vim.lsp.enable("htmx")

		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
			capabilities = capabilities,
		})
		vim.lsp.enable("lua_ls")

		vim.lsp.config("tailwindcss", {
			capabilities = capabilities,
		})
		vim.lsp.enable("tailwindcss")

		vim.lsp.config("basedpyright", {
			capabilities = capabilities,
			python = {
				analysis = {
					ignore = { "*" },
				},
			},
		})
		vim.lsp.enable("basedpyright")

		vim.lsp.config("ruff", {
			init_options = {
				settings = {
					configurationPreference = "filesystemFirst",
					lineLength = 79,
					fixAll = true,
					organizeImports = true,
					showSyntaxErrors = true,
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
		vim.lsp.enable("ruff")

		vim.lsp.config("biome", {
			capabilities = capabilities,
		})
		vim.lsp.enable("biome")

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
		vim.lsp.set_log_level("off")
	end,
}
