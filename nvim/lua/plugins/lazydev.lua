vim.pack.add({
	{ src = "https://github.com/folke/lazydev.nvim" }, -- Needed for completions in vim lua configs
})

require("lazydev").setup()
