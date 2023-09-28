local keymap = vim.keymap

keymap.set("n", "<leader>cc", ":Calendar<CR>", { desc = "Open Calendar" })
keymap.set("n", "<leader>ct", ":Calendar -view=week -split=vertical -width=480<CR>", { desc = "Open Weekly Calendar" })
