vim.api.nvim_create_user_command(
	"WTerminal",
	function()
		vim.cmd("split")
		vim.cmd("terminal fish")
		vim.cmd("resize 10")
		vim.api.nvim_command("startinsert")
	end,
	{ desc = "Opens mini terminal" }
)


