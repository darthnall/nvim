require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    school = "~/Notes/school",
                    work = "~/Notes/work",
                    home = "~/Notes/home",
                },
            },
        },
    }
})
