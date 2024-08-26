return {
	"williamboman/mason-lspconfig.nvim",
    lazy = false,
    priority = 97,
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		ensure_installed = {
			"biome",
			"htmx",
			"lua_ls",
			"ruff",
			"tailwindcss",
            "vale_ls",
		},
		automatic_installation = true,
	},
}
