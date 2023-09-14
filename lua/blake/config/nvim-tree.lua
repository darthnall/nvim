local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")
    local keymap = require("vim.keymap")

    api.config.mappings.default_on_attach(bufnr)

    keymap.set("n", "<leader>ef", api.tree.change_root_to_node)
end

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    filters = {
        dotfiles = true,
    },
    on_attach = my_on_attach,
})
