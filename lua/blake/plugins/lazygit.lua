return {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitCurrentFilter",
    },
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
}
