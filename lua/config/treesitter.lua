local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = { "lua", "vimdoc", "elixir", "heex", "javascript", "html" },
    init_options = {
       userLanguages = {
         elixir = "html-eex",
         eelixir = "html-eex",
         heex = "html-eex",
       },
    },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})
