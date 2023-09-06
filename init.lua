vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd('set number')
vim.cmd('set relativenumber')

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
	a = { "<cmd>Themery<cr>", "Themes" },
	t = {
		name = "Terminal",
		t = { "<cmd>lua NTGlobal['terminal']:toggle()<cr>", "Toggle Terminal" },
	},
	f = {
		name = "Find",
		t = { "<cmd>Telescope<cr>", "Open Telescope" },
		f = { "<cmd>Telescope find_files prompt_prefix=🔍<cr>", "Find File" },
		g = { "<cmd>CarbonNow<cr>", "Save Snippet" },
	},
	r = {
		name = "Icons",
		r = { "<cmd>IconPickerInsert<cr>", "Open Icon Picker" },
	},
}

local wk = require("which-key")
wk.register(mappings, opts)

vim.cmd('colorscheme brogrammer')
