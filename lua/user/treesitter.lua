local configs = require "nvim-treesitter.configs"

configs.setup {
  highlight = {
    additional_vim_regex_highlighting = false,
    enable = true,
  },
  ensure_installed = {
    "lua",
    "vim",
    "query",
    "python",
    "rust",
    "typescript",
    "javascript",
    "go",
    "html",
    "htmldjango",
    "css",
  },                       -- put the language you want in this array
  -- ensure_installed = "all", -- one of "all" or a list of languages
  sync_install = false,     -- install languages synchronously (only applied to `ensure_installed`)
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = {} },
  query_linter = {
    enable = true
  }
}
