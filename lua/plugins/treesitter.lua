return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
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
    end,
    -- dependencies = { "HiPhish/nvim-ts-rainbow2" },
    -- opts = function(_, opts)
    --   opts.rainbow = {
    --     enable = true,
    --     query = "rainbow-parens",
    --     strategy = require("ts-rainbow").strategy.global,
    --   }
    -- end,
  },
}
