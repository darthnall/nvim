return {
    "nvim-telescope/telescope.nvim",
    lazy = "VeryLazy",
    dependencies = { 
        "nvim-lua/plenary.nvim", 
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        require("telescope").setup()
        local wk = require("which-key")
        wk.register({
            f = {
               name = "+file",
               f = { "<cmd>Telescope find_files<cr>", "File File" },
               r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
            },
        })
    end,
}
