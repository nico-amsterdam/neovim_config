local elixir = require("elixir")
local elixirls = require("elixir.elixirls")

elixir.setup {
  nextls = {enable = true},
  elixirls = {
    enable = true,
    settings = elixirls.settings {
      dialyzerEnabled = false,
      enableTestLenses = false,
    },
    on_attach = function(client, bufnr)
      vim.keymap.set("n", ",fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("n", ",tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("v", ",em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
    end,
  },
  projectionist = {
    enable = true
  }
}
