return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
			javascript = { "prettier" },
			djangohtml = { "prettier" },
			html = { "prettier" },
		},
		ft_parsers = {
			djangohtml = "html",
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
