return {
    {
        "dcampos/nvim-snippy",
        opts = function()
            require('snippy').setup({
                -- Custom options
            })
        end
    },
    {
        "dcampos/cmp-snippy",
    },
}
