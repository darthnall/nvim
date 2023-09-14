vim.g.mapleader = " "

local keymap = vim.keymap

-- normal mode
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find File" })
-- insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- terminal mode
keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
