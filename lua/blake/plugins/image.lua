return {
    "samodostal/image.nvim",
    event = "UIEnter",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "m00qek/baleia.nvim",
    },
    config = function() require("blake.config.image") end,
}
