local null_ls = require("null-ls")

local sources = {
	null_ls.builtins.formatting.biome,
	null_ls.builtins.hover.dictionary,
	null_ls.builtins.hover.printenv,
}

null_ls.setup({
	sources = sources,
})
