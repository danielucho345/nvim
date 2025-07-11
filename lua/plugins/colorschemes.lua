-- Using Lazy
return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("onedark").setup({
      style = "darker",
      transparent = true,
      colors = {
        bright_orange = "#ff8800", -- define a new color
        -- green = "#00ffaa", -- redefine an existing color
      },
      highlights = {
        -- ["@string"] = { fg = "$green", fmt = "italic,bold" },
        -- ["@string.documentation.python"] = { fg = "$green", fmt = "italic,bold" },
        ["@string.documentation"] = { fg = "$green", fmt = "italic" },
        ["@string"] = { fg = "$green", fmt = "none" },
        -- ["@comment.python"] = { fg = "$green", fmt = "italic" },
        -- ["@string.regex"] = { fg = "$red", fmt = "italic,bold" },
        -- ["@string.escape"] = { fg = "$red", fmt = "italic,bold" },
        ["@variable"] = { fg = "$red" },
        ["@variable.parameter"] = { fg = "$red", fmt = "italic" },
        ["@variable.builtin"] = { fg = "$red", fmt = "italic" },
        ["@variable.other"] = { fg = "$red", fmt = "italic" },
        ["@variable.other.readwrite"] = { fg = "$red", fmt = "italic" },
        ["@variable.other.constant"] = { fg = "$red", fmt = "italic" },
        ["@variable.other.special"] = { fg = "$red", fmt = "italic" },

        ["@constant"] = { fg = "$yellow", fmt = "none" },
        ["@constant.builtin"] = { fg = "$yellow", fmt = "italic" },

        -- HTML
        ["@tag.delimiter.html"] = { fg = "$grey", fmt = "italic" },
        ["@hx-get"] = { fg = "$grey", fmt = "italic" },
        ["@tag.html"] = { fg = "$red" },
        -- ["@keyword"] = { fg = "$blue", fmt = "bold" },
        -- ["@keyword.function"] = { fg = "$cyan", fmt = "bold,italic" },
        -- ["@function.builtin"] = { fg = "$purple", fmt = "underline" },
        -- ["@constant"] = { fg = "$yellow", fmt = "bold" },
        -- ["@type"] = { fg = "$bright_orange", fmt = "italic" },
        -- ["@lsp.type.class"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
        -- ["@lsp.type.property"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
        -- ["@lsp.type.function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
        -- ["@lsp.type.method"] = { link = "@function" },
        -- To add language specific config
        ["@lsp.type.variable.go"] = { fg = "none" },
      },
    })
    -- Enable theme

    require("onedark").load()
    vim.api.nvim_set_hl(0, "@hx-get", { fg = "#ff8800", bold = true })
  end,
}
