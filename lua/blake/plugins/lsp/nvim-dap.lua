return {
	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	dependencies = {
		{ "ibhagwan/fzf-lua" },
		{ "nvim-telescope/telescope-dap.nvim" },
		{ "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
	},
	config = function()
		local dap = require("dap")
		require("telescope").load_extension("dap")

		dap.adapters.python = function(cb, config)
			if config.request == "attach" then
				---@diagnostic disable-next-line: undefined-field
				local port = (config.connect or config).port
				---@diagnostic disable-next-line: undefined-field
				local host = (config.connect or config).host
				cb({
					type = "server",
					port = assert(port, "`connect.port` is required for a python `attach` configuration."),
					host = host,
					options = {
						source_filetype = "python",
					},
				})
			else
				cb({
					type = "executable",
					command = "/home/.dotfiles/.venvs/debugpy/bin/python",
					args = { "-m", "debugpy.adapter" },
					options = {
						source_filetype = "python",
					},
				})
			end
		end

		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				pythonPath = function()
					local cwd = vim.fn.getcwd()
					if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
						return cwd .. "/venv/bin/python"
					elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
						return cwd .. "/.venv/bin/python"
					else
						return "/usr/bin/python"
					end
				end,
			},
		}
	end,
}
