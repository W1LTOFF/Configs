vim.g.mapleader = " "

vim.g.have_nerd_font = true

-- vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.o.wrap = false              -- Whether to wrap long lines or not
vim.o.swapfile = false
vim.o.clipboard = "unnamedplus" -- Orders nvim to use system clipboard
vim.o.ignorecase = true
vim.o.smartcase = true          -- Enables case ignore where it is needed
vim.o.number = true             -- Number at the start of each line
vim.o.relativenumber = true     -- Numbers are relative to cursor position
vim.o.signcolumn = "yes"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.winborder = "rounded"
vim.o.splitbelow = true
vim.o.splitright = true

vim.diagnostic.config({
    virtual_text = true,      -- Set to true to show virtual text
    signs = true,             -- Show diagnostic signs in the gutter
    underline = true,         -- Underline diagnostic text
    update_in_insert = false, -- Don't update diagnostics while in insert mode
    severity_sort = true,     -- Sort diagnostics by severity
})

--vim.api.nvim_create_autocmd('LspAttach', {
--callback = function(ev)
--local client = vim.lsp.get_client_by_id(ev.data.client_id)
--if client:supports_method('textDocument/completion') then
--vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--end
--end,
--})
vim.cmd("set completeopt+=noselect")

vim.cmd("colorscheme tokyonight-moon")
