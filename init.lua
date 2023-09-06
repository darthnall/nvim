vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins", opts)
mappings = {
	t = {
		name = "Terminal",
		t = { "<cmd>lua NTGlobal['terminal']:toggle()<cr>", "Toggle Terminal" },
	},
	f = {
		name = "Find",
		t = { "<cmd>Telescope<cr>", "Open Telescope" },
		f = { "<cmd>Telescope find_files prompt_prefix=🔍<cr>", "Find File" },
	},
}

local wk = require("which-key")
wk.register(mappings, opts)
