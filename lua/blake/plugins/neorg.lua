return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    ft = { "norg" },
    dependencies = { "plenary.nvim" },
    config = function() require("blake.config.neorg") end,
}
