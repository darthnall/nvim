return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = { 
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        "saadparwaiz1/cmp_luasnip", -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
        { "L3MON4D3/LuaSnip", version = "2.*" }, -- snippet engine
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local wk = require("which-key")
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = { 
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
        })
    end,
}
