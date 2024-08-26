return {
    "mfussenegger/nvim-dap",
    event = { "VeryLazy" },
    dependencies = {
        { "ibhagwan/fzf-lua" },
        { "nvim-telescope/telescope-dap.nvim" },
        { "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" }, },
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
                type = "python";
                request = "launch";
                name = "Launch file";
                program = "${file}";
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
            }
        }

        local keymap = vim.keymap
        keymap.set({"n"}, "<F5>", function() dap.continue() end)
        keymap.set({"n"}, "<F10>", function() dap.step_over() end)
        keymap.set({"n"}, "<F11>", function() dap.step_into() end)
        keymap.set({"n"}, "<F12>", function() dap.step_out() end)

        keymap.set({"n", "v"}, "<leader>ds", function() dap.debug_selection() end)
        keymap.set({"n", "v"}, "<leader>df", function() dap.test_class() end)
        keymap.set({"n", "v"}, "<leader>dm", function() dap.test_method() end)
        keymap.set({"n", "v"}, "<Leader>dr", function() dap.repl.open() end)
        keymap.set({"n", "v"}, "<Leader>dl", function() dap.run_last() end)

        keymap.set({"n"}, "<Leader>b",  function() dap.toggle_breakpoint() end)
        keymap.set({"n"}, "<Leader>B",  function() dap.set_breakpoint() end)
        keymap.set({"n"}, "<Leader>lp", function()
            dap.set_breakpoint(
                nil, nil, vim.fn.input("Log point message: ")
            )
        end)
        keymap.set({"n"}, "<leader>Dh", function()
            local widgets = require("dap.ui.widgets")
            widgets.hover()
        end)
        keymap.set({"n"}, "<leader>Dp", function()
            local widgets = require("dap.ui.widgets")
            widgets.preview()
        end)
        keymap.set({"n"}, "<leader>Df", function()
            local widgets = require("dap.ui.widgets")
            widgets.centered_float(widgets.frames)
        end)
        keymap.set({"n"}, "<leader>Ds", function()
            local widgets = require("dap.ui.widgets")
            widgets.centered_float(widgets.scopes)
        end)
    end,
}
