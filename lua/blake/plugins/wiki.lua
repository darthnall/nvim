return {
    "lervag/wiki.vim",
    cmd = { "WikiIndex", "WikiJournal", "WikiPages", "WikiTags" },
    config = function()
        vim.g.wiki_root = "~/Wiki"
    end,
}
