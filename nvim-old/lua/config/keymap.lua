local k = vim.keymap
local map = vim.keymap.set

k.set("n", "<Leader>z", ":UndotreeToggle<CR>", { silent = true, desc = "toggle Undo tree" })

k.set("n", "<C-Left>", ":wincmd h<CR>", { silent = true, desc = "Switch to left window" })
k.set("n", "<C-Down>", ":wincmd j<CR>", { silent = true, desc = "Switch to down window" })
k.set("n", "<C-Up>", ":wincmd k<CR>", { silent = true, desc = "Switch to up window" })
k.set("n", "<C-Right>", ":wincmd l<CR>", { silent = true, desc = "Switch to right window" })

k.set("n", "<C-S-h>", ":wincmd h<CR>", { silent = true, desc = "Switch to left window" })
k.set("n", "<C-S-j>", ":wincmd j<CR>", { silent = true, desc = "Switch to down window" })
k.set("n", "<C-S-k>", ":wincmd k<CR>", { silent = true, desc = "Switch to up window" })
k.set("n", "<C-S-l>", ":wincmd l<CR>", { silent = true, desc = "Switch to right window" })

-- k.set("n", "<C-S-l>", ":tabnext<CR>", { silent = true, desc = "Switch to next tab" })
-- k.set("n", "<C-S-h>", ":tabprevious<CR>", { silent = true, desc = "Switch to previous tab" })

map("n", "<A-k>", ":m -2<cr>", { desc = "move line up" })
map("n", "<A-j>", ":m +1<cr>", { desc = "move line down" })

map({ "n", "v" }, "<C-s>", ":wa<CR>", { desc = "save all" })
map({ "i" }, "<C-s>", "<ESC>:wa<CR>", { desc = "save all" })

map("n", "<A-up>", ":m -2<cr>", { desc = "move line up" })
map("n", "<A-down>", ":m +1<cr>", { desc = "move line down" })

-- LSP
local lsp = vim.lsp.buf
map("n", "ca", lsp.code_action, { desc = "open Code Actions LSP" })
-- map("i", "<C-ca>", vim.lsp.buf.code_action, { desc = "Open code actions" })
map("n", "gdc", lsp.declaration, { desc = "Go to DeClaration LSP" })
map("n", "gdf", lsp.definition, { desc = "Go to DeFinition LSP" })
-- map("n", "lds", lsp.document_symbol, { desc = "List Document Symbols LSP" })
map("n", "fcd", lsp.format, { desc = "Format Current Document LSP" })
map("n", "gi", lsp.implementation, { desc = "Go to Implementation LSP" })
-- Shift k to show hover
-- map("n", "lar", lsp.references, { desc = "List All References LSP" })
map("n", "rar", lsp.rename, { desc = "Rename All References LSP" })
map({ "n", "i" }, "<C-d>", lsp.signature_help, { desc = "get signature help LSP" })
map("n", "gtd", lsp.type_definition, { desc = "Go to Type Definition LSP" })
map("n", "gh", ":LspClangdSwitchSourceHeader<CR>", { desc = "go to header clangd LSP" })
-- map("n", "lws", lsp.document_symbol, { desc = "List Workspace Symbols LSP" })

map({ "n", "v", "i" }, "<kPageUp>", "<C-U>zz", { silent = true });
map({ "n", "v", "i" }, "<kPageDown>", "<C-D>zz", { silent = true });
-- map("n", "dcl", vim.lsp.codelens.display, { desc = "Display CodeLenses" })
-- map("i", "<C-gd>", vim.ls)

-- map("n", "<C-d>", vim.lsp.buf.signature_help, { desc = "get signature help" })

-- TELESCOPE
map("n", "tk", ":Telescope keymaps<CR>", { silent = true, desc = "show all commands TELESCOPE" })
map("n", "<Leader>e", ":Telescope find_files<CR>", { silent = true, desc = "open Telescope TELESCOPE" })
-- map({ "n", "i" }, "<C-e>", ":Telescope buffers<CR>", { desc = "search through buffers TELESCOPE" })
map("n", "<Leader>f", ":Telescope live_grep<CR>", { desc = "find in files TELESCOPE" })

-- map("n", "]", ":BufferNext<CR>", { silent = true, desc = "Switch to next tab" })
-- map("n", "[", ":BufferPrevious<CR>", { silent = true, desc = "Switch to previous tab" })
-- map("n", "<S-Tab>", ":BufferNext<CR>", { silent = true, desc = "Switch to next tab" })
-- map("n", "<A-S-Tab>", ":BufferPrevious<CR>", { silent = true, desc = "Switch to previous tab" })
-- map("n", "<C-w>", ":BufferClose<CR>", { silent = true, desc = "Close current tab" })
map("n", "cc", function() Snacks.bufdelete() end, { desc = "Close current buffer" })


-- map("n", "<Leader>a", ":AerialNavToggle<CR>");
map("n", "<Leader>a", ":Telescope aerial<CR>");

map("n", "<Leader>hh", ":%!xxd<CR>", { silent = true });
map("n", "<Leader>hr", ":%!xxd -r<CR>", { silent = true });

-- map("n", "<C-b>", "<cmd>NvimTreeToggle<cr>", { desc = "toggle nvimTree" })
---@param opts? snacks.picker.explorer.Config|{}
map("n", "<C-b>", Snacks.explorer.open, { desc = "toggle explorer" })
