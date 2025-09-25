return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup(
            {
                opleader = {
                    line = "<C-S-/>",
                },
                toggler = {
                    line = "<C-/>",
                }
            }
        )
    end,
}
