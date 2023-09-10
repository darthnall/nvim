return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- enable termguicolors for highlight groups
        vim.opt.termguicolors = true
    end,
    opts = { 
        sort_by = "case_insensitive",
        filters = {
            dotfiles = false,
        },
    },
}
