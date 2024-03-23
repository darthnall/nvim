local null_ls = require("null-ls")
local methods = null_ls.methods
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local hover = null_ls.builtins.hover

local ruff = {
    name = "ruff",
    filetypes = { ["python"] = true },
    methods = {
        [methods.FORMATTING] = true,
        [methods.DIAGNOSTICS] = true,
    },
    generator = {
        fn = function()
            return "I am a ruff!"
        end,
    }
}

local tailwindcss = {
    name = "tailwindcss",
    filetypes = {
        ["html"] = true,
        ["css"] = true,
        ["scss"] = true,
        ["javascript"] = true,
        ["typescript"] = true
    },
    methods = {
        [methods.FORMATTING] = true,
        [methods.DIAGNOSTICS] = true,
        [methods.HOVER] = true,
    },
    generator = {
        fn = function()
            return "I am a TailwindCSS!"
        end,
    }
}

local sources = {
    --- Lua ---
    diagnostics.luacheck,
    formatting.stylua,

    -- Python
    ruff,

    -- TailwindCSS
    tailwindcss,

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


vim.keymap.set("n", "<leader>g", vim.lsp.buf.hover, { desc = "Display hover info over cursor" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current buffer" })
vim.keymap.set("n", "<leader>gg", vim.lsp.buf.definition, { desc = "Display definition of word on cursor" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Rename variable" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Jump to implementation" })
