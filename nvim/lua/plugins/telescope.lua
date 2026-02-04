vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" }, -- depends on plenary.nvim
})


require("telescope").setup({
	pickers = {
		colorscheme = {
			enable_preview = true
		},
	},
})


