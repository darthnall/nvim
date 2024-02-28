local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- Lua
		null_ls.builtins.formatting.stylua,

		-- Python
		null_ls.builtins.diagnostics.mypy,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.isort,

		-- Jinja
		null_ls.builtins.diagnostics.djlint,
		null_ls.builtins.formatting.djlint,

		-- JavaScript
		null_ls.builtins.formatting.prettier,
	},
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
