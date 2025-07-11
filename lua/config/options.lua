-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.termguicolors = true

-- Force italics for comments
vim.api.nvim_set_hl(0, "Comment", { italic = true })

-- Optionally, add italics for other groups
vim.api.nvim_set_hl(0, "Keyword", { italic = true })
vim.api.nvim_set_hl(0, "Type", { italic = true })
