local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover

local sources = {
	diagnostics.djlint,
	hover.dictionary,
}

null_ls.setup({
	sources = sources,
})

-- vim.keymap.set("n", "<leader>g", vim.lsp.buf.hover, { desc = "Display hover info over cursor" })
-- vim.keymap.set("n", "<leader>gg", vim.lsp.buf.definition, { desc = "Display definition of word on cursor" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Rename variable" })
-- vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Jump to implementation" })
