require("config.lazy")
require("config.config")
require("config.keymap")

vim.lsp.config("lua_ls", {
    cmd = { '/usr/bin/lua-language-server' },
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


-- vim.lsp.start({ name = "neocmakelsp", cmd = { "neocmakelsp", "stdio" } })

-- vim.lsp.config("neocmake", {

-- })
-- vim.lsp.enable("neocmake")

-- vim.cmd.colorscheme("base24-hurtado")
