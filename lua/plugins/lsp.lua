return {
    -- LSP manager
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("config.lsp")
    end,
}
