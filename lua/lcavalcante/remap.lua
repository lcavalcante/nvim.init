vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
--
-- disable capital Q, the bad place
vim.keymap.set("n", "Q", "<nop>")

-- if hl JK uses move command
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J command keeps cursor at postions instead of End of line
vim.keymap.set("n", "J", "mzJ`z")

-- navigations keeps cursor at center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever -> delete word keeping buffer
vim.keymap.set("x", "<leader>p", [["_dP]])
