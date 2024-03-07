local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover

local sources = {
    --- Lua ---
    diagnostics.luacheck,
    formatting.stylua,

    -- Python
    diagnostics.pyright,
    hover.pyright,
    formatting.black,

    -- Jinja
    diagnostics.djlint,

    -- JavaScript / JSON
    diagnostics.biome,
    formatting.prettier,

    -- General
    hover.dictionary,
}

null_ls.setup({
	sources = sources,
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>G", vim.lsp.buf.implementation, {})
