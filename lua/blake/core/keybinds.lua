vim.g.mapleader = " "

local keymap = vim.keymap

-- normal mode
keymap.set("n", "gf", "<C-W>gf", { desc = "Open path in new tab." })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find File" })
keymap.set("n", "<leader>h", "<C-w>h", { desc = "Navigate left pane" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "Navigate down pane" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "Navigate up pane" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "Navigate right pane" })
-- insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- terminal mode
keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
