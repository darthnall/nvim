return {
	"hrsh7th/nvim-cmp",
	event = "VeryLazy",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
	},
	opts = {
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		window = {
			completion = require("cmp").config.window.bordered(),
			documentation = require("cmp").config.window.bordered(),
		},
		mapping = require("cmp").mapping.preset.insert({
			["<C-j>"] = require("cmp").mapping.select_next_item(),
			["<C-k>"] = require("cmp").mapping.select_prev_item(),
			["<C-Space>"] = require("cmp").mapping.complete(),
			["<C-e>"] = require("cmp").mapping.abort(),
			["<CR>"] = require("cmp").mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = require("cmp").config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
		}, {
			{ name = "buffer" },
		}),
	},
}
