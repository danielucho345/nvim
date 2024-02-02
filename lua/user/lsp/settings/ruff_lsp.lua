return {
  init_options = {
    single_file_support = false,
    root_dir = vim.fn.getcwd(),
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {
        "--select=ALL",
        "--ignore=RET504,TD002,TD001,TD003,PD015",
        "--line-length=100"
      },
    }
  }
}
