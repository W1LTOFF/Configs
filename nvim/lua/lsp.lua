-- vim.lsp.enable()
vim.lsp.enable("lua_ls")

vim.lsp.enable("fish_lsp")

vim.lsp.enable("cmake")

vim.lsp.enable("clangd")

-- vim.lsp.config("rust_analyzer", {
-- 	name = "rust_analyzer_test",
-- 	cmd = { "rust-analyzer" },
-- 	root_dir = vim.fn.getcwd(),
-- 	settings = {
-- 		["rust-analyzer"] = {
-- 			check = { command = "check", extraArgs = { "--lib" } }
-- 		}
-- 	}
-- })
vim.lsp.enable("rust_analyzer")

vim.lsp.enable("nixd")
vim.lsp.enable("nil_ls")

vim.lsp.enable("slangd")

vim.lsp.enable("ts_ls")
vim.lsp.enable("cssls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("html")
vim.lsp.enable("emmet_ls")
-- vim.lsp.enable("svelte")
-- vim.lsp.enable("")

vim.lsp.enable("jdtls")


vim.lsp.enable("zls")

vim.lsp.enable("dartls")

vim.lsp.inlay_hint.enable()
