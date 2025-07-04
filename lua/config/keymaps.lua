-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
require("config.keymaps.python")

-- Move Lines (Shift + j/k, i.e. J / K) - Overriding Defaults
vim.keymap.set("n", "J", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down (Shift+J)" })
vim.keymap.set("n", "K", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up (Shift+K)" })

vim.keymap.set("i", "J", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down (Shift+J)" })
vim.keymap.set("i", "K", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up (Shift+K)" })

vim.keymap.set("v", "J", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down (Shift+J)" })
vim.keymap.set("v", "K", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up (Shift+K)" })
