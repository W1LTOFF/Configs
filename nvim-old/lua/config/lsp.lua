vim.lsp.config("lua_ls", {
    -- cmd = { '/usr/bin/lua-language-server' },
    -- or use stdpath:
    -- cmd = { vim.fn.stdpath('data') .. '/../../.local/bin/lua-language-server' },
})
vim.lsp.enable("lua_ls")

vim.lsp.config("qmlls", {
    cmd = { 'qmlls6' }, -- Use 'qmlls' if 'qmlls6' is not available
    -- filetypes = { 'qml' },
    -- root_dir = require('lspconfig.util').find_root({ 'qmlproject', '.git', 'CMakeLists.txt' }),
})
vim.lsp.enable("qmlls")

-- vim.lsp.config("bashls", {
--     filetypes = { "sh", "zsh" }
-- })
-- vim.lsp.enable("bashls")
vim.lsp.enable("fish_lsp")

vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("nixd")
vim.lsp.enable("slangd")

vim.lsp.enable("ts_ls")
vim.lsp.enable("cssls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("html")
-- vim.lsp.enable("superhtml")

vim.lsp.config("jdtls", {
    -- cmd
})
vim.lsp.enable("jdtls")
-- vim.lsp.enable('java_language_server')
