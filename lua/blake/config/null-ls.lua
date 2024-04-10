local null_ls = require("null-ls")
local methods = null_ls.methods
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover

local ruff_format = {
	filetypes = { "python" },
	method = methods.FORMATTING,
	generator = {
		fn = function(bufname)
			local command = "ruff"
			local args = { "format" }

			return {
				command = command,
				args = args,
				bufname = bufname,
			}
		end,
		async = true,
	},
}

local ruff_lint = {
	filetypes = { "python" },
	method = methods.DIAGNOSTICS,
	generator = {
		fn = function(bufname)
			local command = "ruff"
			local args = { "lint" }

			return {
				command = command,
				args = args,
				bufname = bufname,
			}
		end,
		async = true,
	},
}

local sources = {
	formatting.stylua,
	diagnostics.djlint,
	formatting.prettier,
	hover.dictionary,
}

null_ls.setup({
	sources = sources,
})

require("null-ls").register({
	name = "ruff",
	filetypes = { "python" },
	sources = { ruff_format },
})

vim.keymap.set("n", "<leader>g", vim.lsp.buf.hover, { desc = "Display hover info over cursor" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current buffer" })
vim.keymap.set("n", "<leader>gg", vim.lsp.buf.definition, { desc = "Display definition of word on cursor" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Rename variable" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Jump to implementation" })
