return {

    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            extensions = {
                aerial = {
                    -- Set the width of the first two columns (the second
                    -- is relevant only when show_columns is set to 'both')
                    col1_width = 4,
                    col2_width = 30,
                    -- How to format the symbols
                    format_symbol = function(symbol_path, filetype)
                        if filetype == "json" or filetype == "yaml" then
                            return table.concat(symbol_path, ".")
                        else
                            return symbol_path[#symbol_path]
                        end
                    end,
                    -- Available modes: symbols, lines, both
                    show_columns = "both",
                },
            },

            pickers = {
                colorscheme = {
                    enable_preview = true
                },
            },
        })
        -- vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
        vim.keymap.set("n", "<leader>ps", function()
            require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
        end)
        require("telescope").load_extension("aerial")
    end,
}
