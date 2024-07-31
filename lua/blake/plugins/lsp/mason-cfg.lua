return {
	"williamboman/mason-lspconfig.nvim",
	event = { "InsertEnter" },
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		auto_install = true,
		ensure_installed = {
			"biome",
			"htmx",
			"lua_ls",
			"ruff",
			"tailwindcss",
		},
	},
}
