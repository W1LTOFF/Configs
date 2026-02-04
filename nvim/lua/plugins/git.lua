vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/NeogitOrg/neogit" },
})

require("gitsigns").setup({
	current_line_blame = true,
	current_line_blame_opts = {
		delay = 100,
	},
})
