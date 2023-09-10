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
                    s = { "<cmd>Telescope live_grep<cr>", "Find String in wd" },
                    S = { "<cmd>Telescope grep_string<cr>", "Find String Under Cursor in wd" },
                },
                e = {
                    name = "+explore",
                    t = { "<cmd>NvimTreeToggle<cr>", "Tree Toggle" },
                    e = { "<cmd>NvimTreeFocus<cr>", "Tree Focus" },
                    n = { "<cmd>NvimTreeFindFile<cr>", "Tree Find File" },
                },
                l = {
                    name = "+lazy",
                    l = { "<cmd>Lazy home<cr>", "Lazy Home" },
                    c = { "<cmd>Lazy clean<cr>", "Lazy Clean" },
                    h = { "<cmd>Lazy health<cr>", "Lazy Health" },
                    i = { "<cmd>Lazy install<cr>", "Lazy Install" },
                },
                n = {
                    name = "+note",
                    n = { "<cmd>Telekasten goto_today<cr>", "Go to Daily" },
                    N = { "<cmd>Telekasten new_note<cr>", "New Note" },
                    c = { "<cmd>Telekasten show_calendar<cr>", "Show calendar" },
                    E = { "<cmd>Telekasten search_notes<cr>", "Search Notes" },
                    e = { "<cmd>Telekasten find_daily_notes<cr>", "Search Dailies" },
                },
                r = {
                    name = "+edit",
                    e = { "<cmd>Telekasten toggle_todo<cr>", "Toggle To-Do" },
                },
                t = {
                    name = "+term",
                    t = { '<cmd>lua NTGlobal["terminal"]:toggle()<cr>', "Toggle Terminal" },
                    ["1"] = { '<cmd>lua NTGlobal["terminal"]:open(1)<cr>', "Open Terminal 1" },
                    ["2"] = { '<cmd>lua NTGlobal["terminal"]:open(2)<cr>', "Open Terminal 2" },
                    ["3"] = { '<cmd>lua NTGlobal["terminal"]:open(3)<cr>', "Open Terminal 3" },
                    ["4"] = { '<cmd>lua NTGlobal["terminal"]:open(4)<cr>', "Open Terminal 4" },
                    ["5"] = { '<cmd>lua NTGlobal["terminal"]:open(5)<cr>', "Open Terminal 5" },
                    k = { '<cmd>lua NTGlobal["window"]:change_height(2)<cr>', "Increase Window Size" },
                    j = { '<cmd>lua NTGlobal["window"]:change_height(-2)<cr>', "Decrease Window Size" },
                },
            },
        }
        wk.register(mappings)
    end,
    opts = {  }, -- Add config here when ready
}
