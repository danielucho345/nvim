local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
  print("Error with trouble.lua")
  return
end


vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)

trouble.setup()
