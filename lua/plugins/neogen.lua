return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      -- Enable neogen
      enabled = true,

      -- Input after the annotation is generated
      input_after_comment = true,

      -- Snippet engine to use
      snippet_engine = "luasnip", -- or "vsnip", "snippy", "nvim"

      -- Languages configuration
      languages = {
        python = {
          template = {
            -- Available templates: google_docstrings, numpydoc, sphinx
            annotation_convention = "google_docstrings", -- or "numpydoc", "sphinx"
          },
        },
      },

      -- Placeholders used for different parts of the annotation
      placeholders_text = {
        description = "[TODO:description]",
        tparam = "[TODO:parameter]",
        parameter = "[TODO:parameter]",
        return_statement = "[TODO:return]",
        class = "[TODO:class]",
        throw = "[TODO:exception]",
        varargs = "[TODO:varargs]",
        type = "[TODO:type]",
        attribute = "[TODO:attribute]",
        args = "[TODO:args]",
        kwargs = "[TODO:kwargs]",
      },

      -- Placeholders highlights to use
      placeholders_hl = "DiagnosticHint",
    })

    -- Keymaps for neogen
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>nt", ":lua require('neogen').generate({ type = 'type' })<CR>", opts)
  end,
}

-- return {
--   "danymat/neogen",
--   config = function()
--     require("neogen").setup({
--       enabled = true, --if you want to disable Neogen
--       input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
--       -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
--       snippet_engine = "luasnip",
--       languages = {
--         python = {
--           template = {
--             annotation_convention = { python = "numpydoc" },
--           },
--         },
--       },
--     })
--   end,
-- }
