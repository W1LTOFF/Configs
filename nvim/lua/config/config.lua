local o = vim.opt

-- Editor options

vim.g.have_nerd_font = true

o.wrap = false
o.swapfile = false
o.showmode = false
o.incsearch = true
o.hlsearch = false
o.ignorecase = true
o.smartcase = true
o.number = true             -- Print the line number in front of each line
o.relativenumber = true     -- Show the line number relative to the line with the cursor in front of each line.
o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
o.syntax = "on"             -- When this option is set, the syntax with this name is loaded.
o.autoindent = true         -- Copy indent from current line when starting a new line.
o.cursorline = true         -- Highlight the screen line of the cursor with CursorLine.
o.expandtab = true          -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.shiftwidth = 4            -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 4               -- Number of spaces that a <Tab> in the file counts for.
o.encoding = "UTF-8"        -- Sets the character encoding used inside Vim.
o.ruler = true              -- Show the line and column number of the cursor position, separated by a comma.
o.mouse = "a"               -- Enable the use of the mouse. "a" you can use on all modes
o.title = true              -- When on, the title of the window will be set to the value of 'titlestring'
o.hidden = true             -- When on a buffer becomes hidden when it is |abandon|ed
o.ttimeoutlen = 0           -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.wildmenu = true           -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.showcmd = true            -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showmatch = true          -- When a bracket is inserted, briefly jump to the matching one.
o.inccommand = "split"
-- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
o.splitright = true
o.splitbelow = true -- When on, splitting a window will put the new window below the current one
o.termguicolors = true
o.number = true
o.winborder = 'rounded'

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({ async = true })
                end,
            })
        end
    end,
})



vim.diagnostic.config({
    virtual_text = true,      -- Set to true to show virtual text
    signs = true,             -- Show diagnostic signs in the gutter
    underline = true,         -- Underline diagnostic text
    update_in_insert = false, -- Don't update diagnostics while in insert mode
    severity_sort = true,     -- Sort diagnostics by severity
})

-- vim.api.nvim_create_autocmd('LspAttach', {
--     callback = function(ev)
--         local client = vim.lsp.get_client_by_id(ev.data.client_id)
--         if client:supports_method('textDocument/completion') then
--             vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--         end
--     end,
-- })

vim.cmd("set completeopt+=noselect")


-- THEME
vim.cmd("colorscheme tokyonight")
