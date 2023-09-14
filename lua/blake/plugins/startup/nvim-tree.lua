return {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeRefresh", "NvimTreeCollapse" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- bind keys
        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
        vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    end,
    config = function() require("blake.config.nvim-tree") end,
}
