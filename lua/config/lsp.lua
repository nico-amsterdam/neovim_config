local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")
local home = vim.fn.expand('$HOME')

local lexical_config = {
        filetypes = { "elixir", "heex" },
        cmd = { home .. "/elixir/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
        -- cmd = { home .. "/elixir/elixir-ls/language_server.sh" },
        settings = {},
}

local custom_attach = function(client)
        print("Lexical has started.")
end

if not configs.lexical then
	configs.lexical = {
		default_config = {
			filetypes = lexical_config.filetypes,
			cmd = lexical_config.cmd,
			root_dir = function(fname)
				return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
			end,
			-- optional settings
			settings = lexical_config.settings,
		},
	}
end

lspconfig.lexical.setup({
	-- optional config
	on_attach = custom_attach,
})
