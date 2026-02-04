local set = vim.keymap.set

-- set({ "n" }, "", "", { silent = true, desc = "" })

set("n", "gi", vim.lsp.buf.implementation, { silent = true, desc = "Go to Implementation" }) -- Replaces standart
set("n", "gd", vim.lsp.buf.definition, { silent = true, desc = "Go to Definition" })         -- Replaces standart

-- Oil
set("n", "<Leader>o", ":Oil<CR>", { silent = true, desc = "Open Oil file manager" })


-- Mode escape
set("i", "jj", "<Esc>", { silent = true, desc = "Escape insert mode" })
set("i", "jk", "<Esc>", { silent = true, desc = "Escape insert mode" })
set("t", "jj", "<C-\\><C-n>", { silent = true, desc = "Escape terminal mode" })
set("t", "jk", "<C-\\><C-n>", { silent = true, desc = "Escape terminal mode" })

-- move lines
set("n", "<A-k>", ":m -2<cr>", { silent = true, desc = "move line up" })
set("n", "<A-up>", ":m -2<cr>", { silent = true, desc = "move line up" })
set("n", "<A-j>", ":m +1<cr>", { silent = true, desc = "move line down" })
set("n", "<A-down>", ":m +1<cr>", { silent = true, desc = "move line down" })

-- move trough tabs
set("n", "L", "gt", { silent = true, desc = "Move to the next tab" })
set("n", "H", "gT", { silent = true, desc = "Move to the previous tab" })

-- save
set({ "n", "i", "v" }, "<C-s>", "<ESC>:wa<CR>", { silent = true, desc = "save all" })

set("n", "<Leader>rs", function()
	vim.cmd("AutoSession restore")
	vim.env.IS_SESSION_RESTORED = true;
end
, { silent = true, desc = "Restore Session" })

-- Format
set("n", "<Leader>lf", vim.lsp.buf.format, { silent = true, desc = "Format current buffer" })

-- Make pgUp and pgDown behave like C-u and C-d
set({ "n", "v", "i" }, "<PageUp>", "<C-u>", { silent = true });
set({ "n", "v", "i" }, "<PageDown>", "<C-d>", { silent = true });

--
set({ "n", "v" }, "<C-u>", "<C-u>zz", { silent = true });
set({ "n", "v" }, "<C-d>", "<C-d>zz", { silent = true });

-- TELESCOPE
-- set("n", "tk", ":Telescope help_tags<CR>", { silent = true, desc = "Show all keymaps TELESCOPE" })
-- set("n", "tk", ":Telescope keymaps<CR>", { silent = true, desc = "Show all keymaps TELESCOPE" })
set("n", "<Leader>e", ":Telescope find_files<CR>", { silent = true, desc = "Find files TELESCOPE" })
set("n", "<Leader>f", ":Telescope live_grep<CR>", { silent = true, desc = "Find in files TELESCOPE" })
set("n", "<Leader>b", ":Telescope buffers<CR>", { silent = true, desc = "Find opened buffers" })
set("n", "grr", ":Telescope lsp_references<CR>", { silent = true, desc = "Find all references" }) -- replaces standart grr
-- set("n", "<Leader>xx", ":Telescope diagnostics<CR>", { silent = true, desc = "See diagnostics" })
set("n", "<Leader>m", ":Telescope man_pages<CR>", { silent = true, desc = "Find man page" })
-- set("n", "<Leader>", ":Telescope <CR>", { silent = true, desc = "Find " })
set("n", "<Leader>h", ":Telescope help_tags<CR>", { silent = true, desc = "Show help for for tags" })
set("n", "<Leader>c", function()
	require("telescope.builtin").find_files({
		cwd = "~/Configs/"
	})
end, { silent = true, desc = "Find in Configs" })
set("n", "<Leader>s", function()
	require("telescope.builtin").find_files({
		cwd = "./src"
	})
end, { silent = true, desc = "Find in ./src" })


-- TROUBLE
set("n", "<Leader>xx", ":Trouble diagnostics toggle<CR>", { silent = true, desc = "Toggle Trouble diagnostics" })
