return {
    "folke/which-key.nvim",
    lazy = false,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        local ts = require("telescope.actions")
        local mappings = { 
            ["<leader>"] = {
                f = {
                    name = "+file",
                    f = { "<cmd>Telescope find_files<cr>", "Find File" },
                    e = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
                },
                e = {
                    name = "+explore",
                    t = { "<cmd>NvimTreeToggle<cr>", "Tree Toggle" },
                    e = { "<cmd>NvimTreeFocus<cr>", "Tree Focus" },
                    n = { "<cmd>NvimTreeFindFile<cr>", "Tree Find File" },
                    p = { "<cmd>NvimTreeToggle ~/Documents/projects<cr>", "Tree Projects" },
                },
                l = {
                    name = "+lazy",
                    l = { "<cmd>Lazy home<cr>", "Lazy Home" },
                    c = { "<cmd>Lazy clean<cr>", "Lazy Clean" },
                    h = { "<cmd>Lazy health<cr>", "Lazy Health" },
                    i = { "<cmd>Lazy install<cr>", "Lazy Install" },
                }
            },
        }
        wk.register(mappings)
    end,
    opts = {  }, -- Add config here when ready
}
