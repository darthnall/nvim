return {
	"williamboman/mason-lspconfig.nvim",
	event = "VeryLazy",
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		ensure_installed = {
			"basedpyright",
			"biome",
			"htmx",
			"lua_ls",
			"ruff",
			"tailwindcss",
		},
		pip = { upgrade_pip = true },
	},
	keys = {
		{ "<leader>mm", "<cmd>Mason<cr>", { "n" }, desc = "Open Mason" },
		{ "<leader>mu", "<cmd>MasonUpdate<cr>", { "n" }, desc = "Update Mason" },
	},
}
