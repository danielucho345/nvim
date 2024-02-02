-- return {
--   settings = {
--     pyright = {
--       disableOrganizeImports = true,
--     },
--     python = {
--       analysis = {
--         -- autoSearchPaths = true,
--         typeCheckingMode       = "basic",
--         useLibraryCodeForTypes = true,
--         stubPath               = { "src" },
--         include                = { "src" },
--         extraPaths             = { "src" },
--       },
--     },
--   },
-- }
return {
  handlers = {
    ["textDocument/publishDiagnostics"] = function() end,
  },
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        typeCheckingMode = "basic",
        useLibraryCodeForTypes = true,
        include = { "src","package","**/package" },
      },
    },
  },
}
