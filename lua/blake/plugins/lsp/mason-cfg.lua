return {
	"williamboman/mason-lspconfig.nvim",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		auto_install = true,
		ensure_installed = {
			"biome",
			"htmx",
			"jsonls",
			"lua_ls",
			"pyright",
			"ruff",
			"ruff_lsp",
			"tailwindcss",
		},
	},
}
