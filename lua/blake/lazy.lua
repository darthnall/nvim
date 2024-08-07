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
local opts = {
	checker = {
		enabled = true,
	},
	change_detection = {
		enabled = true,
		notify = false,
	},
	defaults = {
		lazy = true,
	},
}
require("lazy").setup({
	{ import = "blake.plugins" },
	{ import = "blake.plugins.startup" },
	{ import = "blake.plugins.lsp" },
}, opts)
