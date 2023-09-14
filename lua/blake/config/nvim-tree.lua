local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")
    local keymap = require("vim.keymap")

    api.config.mappings.default_on_attach(bufnr)

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    keymap.set("n", "<leader>R", api.tree.change_root_to_node)
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    filters = {
        dotfiles = true,
    },
    on_attach = my_on_attach,
})


