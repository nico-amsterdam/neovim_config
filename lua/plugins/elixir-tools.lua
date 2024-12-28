return {
  "elixir-tools/elixir-tools.nvim",
  enabled = true,
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("config.elixir-tools")
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
