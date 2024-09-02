local opt = vim.opt
local g = vim.g

--- Global Options ---
opt.autoindent = true
opt.background = "dark"
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.expandtab = true
opt.ignorecase = true
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.timeout = true
opt.timeoutlen = 250
opt.wrap = false

--- Python Options ---
g.python3_host_prog = "/home/blake/.config/nvim/.venv/bin/python"
