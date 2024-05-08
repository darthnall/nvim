return {
	"williamboman/mason-lspconfig.nvim",
	event = { "UIEnter" },
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		auto_install = true,
		ensure_installed = {
			"biome",
			"htmx",
			"jsonls",
			"lua_ls",
			"pyright",
			"ruff_lsp",
			"ruff",
			"tailwindcss",
		},
	},
}
