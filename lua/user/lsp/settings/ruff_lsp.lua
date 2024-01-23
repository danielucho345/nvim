return{

init_options = {
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {
        "--select=ALL",
        "--ignore=RET504,TD002,TD001,TD003,PD015"
      },
    }
  }
}
