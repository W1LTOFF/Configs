return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup(
            {
                opleader = {
                    line = "<C-/>",
                },
                toggler = {
                    line = "<C-/>",
                }
            }
        )
    end,
}
