vim.pack.add({
	{ src = "https://github.com/rmagatti/auto-session" },
})

require("auto-session").setup({
	enabled = true,
	auto_save = true,
	auto_restore = true,
	suppressed_dirs = {
		"~/",
		"~/Downloads",
		"~/Projects",
		"/",
	},
	session_lens = {
		picker = "telescope",
		load_on_setup = true,
	},

})
