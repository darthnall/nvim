return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lsp",
	},
	run = "make install_jsregexp",
	event = { "InsertEnter" },
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local rep = require("luasnip.extras").rep
		local fmt = require("luasnip.extras.fmt").fmt

		ls.add_snippets("html", {
			s(
				"block",
				fmt(
					[[
                {{% block {} %}}
                {}
                {{% endblock {} %}}
                ]],
					{ i(1), i(0), rep(1) }
				)
			),
		})
		ls.add_snippets("")
	end,
}
