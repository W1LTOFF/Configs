vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format()
	end
})

vim.api.nvim_create_autocmd("VimLeave", {
	callback = function()
		if vim.env.IS_SESSION_RESTORED then
			vim.cmd("AutoSession save")
		end
	end
})
