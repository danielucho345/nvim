vim.keymap.set("n", "<leader>cp", function()
  local relative_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
  vim.fn.setreg("+", relative_path) -- Copy to clipboard
  vim.notify("Copied to clipboard: " .. relative_path)
end, { noremap = true, silent = true, desc = "Copy File Path to Clipboard" })

vim.keymap.set("n", "<leader>cM", function()
  local relative_path = vim.fn.fnamemodify(vim.fn.expand("%:r"), ":.")
  local module_path = relative_path:gsub("/", "."):gsub("%.lua$", "")
  vim.fn.setreg("+", "python -m " .. module_path) -- Copy to clipboard
  vim.notify("Copied to clipboard: python -m " .. module_path)
end, { noremap = true, silent = true, desc = "Copy Python Module Path to Clipboard" })
