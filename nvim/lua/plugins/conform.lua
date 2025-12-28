return {
    'stevearc/conform.nvim',
    lazy = false,
    opts = {},
    -- keys = {
    --     {},
    -- },
    config = function()
        -- if format_on_save is a function, it will be called during BufWritePre
        require("conform").setup({
            -- format_on_save = function(bufnr)
            --     -- Disable autoformat on certain filetypes
            --     local ignore_filetypes = { "sql", "java" }
            --     if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
            --         return
            --     end
            --     -- Disable with a global or buffer-local variable
            --     if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            --         return
            --     end
            --     -- Disable autoformat for files in a certain path
            --     local bufname = vim.api.nvim_buf_get_name(bufnr)
            --     if bufname:match("/node_modules/") then
            --         return
            --     end
            --     -- ...additional logic...
            --     return { timeout_ms = 500, lsp_format = "fallback" }
            -- end,
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                json = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                markdown = { "prettier" },
            },
            format_on_save = {
                lsp_fallback = true,
                timeout_ms = 1000,
            },
            -- formatters = {
            --     prettier = require("conform.formatters.prettier").with({
            --         -- optional: add extra args if needed
            --         -- args = { "--print-width", "100" }
            --     })
            -- },
            -- Example with global Prettier config fallback
            -- require("conform").setup({
            -- formatters = {
            --     prettier = {
            --         command = "prettier",
            --         args = { "--stdin-filepath", "$FILENAME" },
            --     },
            -- },
            -- ... other configurations like formatters_by_ft ...
            -- })
        })
    end
}
