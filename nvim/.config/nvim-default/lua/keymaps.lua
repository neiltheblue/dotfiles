vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<C-P>", '<esc>"+p', { desc = "Paste from Clipboard" })
keymap.set({ "n", "i" }, "jk", "<esc>", { desc = "Escape" })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
