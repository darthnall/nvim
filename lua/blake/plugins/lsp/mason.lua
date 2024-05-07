return {
    "williamboman/mason.nvim",
    event = { "InsertEnter", "CmdlineEnter" },
    config = true,
    dependencies = {
        "mfussenegger/nvim-dap",
        "rcarriga/nvim-dap-ui",
    },
}
