return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "markdown", "markdown_inline", "cpp", "html", "rust", "css", "javascript", "nasm" },
            auto_install = true,
            highlight = {
                enable = true,
            }
        }
    end,
}
