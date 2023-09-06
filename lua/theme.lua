require("themery").setup({
  	themes = {{
    		name = "Day",
    		colorscheme = "brogrammer",
  	},
  	{
    		name = "Night",
    		colorscheme = "ayu-dark",
  	}},
})
-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme ayu")
-- end themery block
