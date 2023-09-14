return {
    "iamcco/markdown-preview.nvim",
    build = "cd app && yarn install",
    ft = { "markdown" },
    config = function() require("blake.config.markdown-preview") end,
}
