local opt = vim.opt
local g = vim.g

--- Global Options ---
opt.timeout = true
opt.timeoutlen = 250

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.smartindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

--- Python options ---
g.python3_host_prog = "/home/blake/.config/nvim/.venv/bin/python"
