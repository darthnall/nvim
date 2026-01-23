return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	opts = {},
	config = function()
		vim.lsp.config("basedpyright", {})
		vim.lsp.config("ruff", {})
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
				},
			},
		})
		vim.lsp.config("tailwindcss", {
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
					includeLanguages = {
						python = "python",
					},
					validate = true,
				},
			},
		})

		vim.lsp.enable("basedpyright")
		vim.lsp.enable("ruff")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("tailwindcss")
	end,
}
