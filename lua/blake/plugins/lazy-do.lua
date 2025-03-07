-- Text-editor based todo list
return {
	"Dan7h3x/LazyDo",
	cmd = { "LazyDoToggle", "LazyDoPin", "LazyDoToggleStorage" },
	keys = {
		{ "<F2>", "<ESC><CMD>LazyDoToggle<CR>", mode = { "n", "i" } },
	},
	event = "VeryLazy",
	opts = {
		title = "Tasks",
	},
}
