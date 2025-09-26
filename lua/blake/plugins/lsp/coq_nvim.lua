return {
	"neovim/nvim-lspconfig",
	event = "InsertEnter",
	dependencies = {
		{ "ms-jpq/coq_nvim", branch = "coq" },
		{ "ms-jpq/coq.artifacts", branch = "artifacts" },
	},
	opts = {},
	config = function()
		--- LSP settings
	end,
}
