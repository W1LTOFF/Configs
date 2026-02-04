vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		data = { run = function(_) vim.cmd 'TSUpdate' end }
	},
})

require("nvim-treesitter").setup({
	ensure_installed = { "c", "lua", "html", "python" },
	auto_install = true,
	highlight = { enable = true },
})
