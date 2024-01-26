return {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = { "L3MON4D3/LuaSnip" },
    config = function() require("blake.config.nvim-cmp") end,
}
