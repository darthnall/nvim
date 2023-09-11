return {
    "renerocksai/telekasten.nvim",
    cmd = "Telekasten",
    dependencies = { 
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-symbols.nvim",
        "renerocksai/calendar-vim",
    },
    opts = { 
        home = vim.fn.expand("~/Documents/notes"),
    },
}
