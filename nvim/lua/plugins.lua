-- vim.pack.add({
-- 	-- { src = "https://github.com/nvim-lua/plenary.nvim" },
-- 	-- { src = "https://github.com/nvim-telescope/telescope.nvim" }, -- depends on plenary.nvim
-- 	-- { src = "https://github.com/folke/tokyonight.nvim" },      -- colorsceme
-- 	-- { src = "https://github.com/neovim/nvim-lspconfig" },      -- predefined lsp configs
-- 	-- { src = "https://github.com/stevearc/oil.nvim" },          -- file explorer
-- 	-- { src = "https://github.com/ray-x/lsp_signature.nvim" },   -- Fancy signature helper
-- 	-- { src = "https://github.com/nvim-tree/nvim-web-devicons" }, -- Cool icons for files
-- 	-- { src = "https://github.com/nvim-mini/mini.pairs" },       -- Auto ({[]})
-- 	-- { src = "https://github.com/folke/lazydev.nvim" },         -- Needed for completions in vim lua configs
-- 	-- { src = "https://github.com/hrsh7th/nvim-cmp" },           -- Completions Completions Completions
-- 	-- { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
-- 	-- { src = "https://github.com/hrsh7th/cmp-buffer" },
-- 	-- { src = "https://github.com/hrsh7th/cmp-path" },
-- 	-- { src = "https://github.com/hrsh7th/cmp-cmdline" },
-- 	-- { src = "https://github.com/" },
-- 	-- { src = "https://github.com/folke/trouble.nvim" }, -- Useful plugin to look errors
-- 	-- {
-- 	-- 	src = "https://github.com/nvim-treesitter/nvim-treesitter",
-- 	-- 	data = { run = function(_) vim.cmd 'TSUpdate' end }
-- 	-- },
-- 	-- { src = "https://github.com/windwp/nvim-ts-autotag" },
-- 	-- { src = "https://github.com/rmagatti/auto-session" },
-- 	-- { src = "https://codeberg.org/mfussenegger/nvim-jdtls" },
-- })


require("plugins/telescope")
require("plugins/themes")
require("plugins/lsp-config")
require("plugins/oil")
require("plugins/lsp-signature")
require("plugins/web-devicons")
require("plugins/mini-pairs")
require("plugins/lazydev")
require("plugins/cmp")
require("plugins/trouble")
require("plugins/treesitter")
require("plugins/ts-autotag")
require("plugins/auto-session")
require("plugins/jdtls")
require("plugins/git")
