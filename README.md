# neovim_config
My Neovim config with:
- package manager: lazy-nvim
- filesearch: Telescope &amp; ctags
- sql-client: Dadbod-ui
- Language servers: ElixirLS/Next LS/Lexical
- syntax-highlight: treesitter
- autocomplete: nvim-cmp 
- statusbar: lualine

# Ubuntu installation

## Install Neovim

- sudo apt-get install neovim -y
  version 0.11
- sudo apt install lua5.4 liblua5.4-dev -y
- wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
- tar zxpf luarocks-3.11.1.tar.gz
- cd luarocks-3.11.1/
- ./configure && make && sudo make install
- sudo luarocks install luasocket

## Install dependencies

- sudo apt-get install ripgrep -y
- sudo apt-get install fd-find -y

Optional:
- sudo apt-get install exuberant-ctags -y
  see https://randre03.github.io/ctags_and_neovim/
.\
If you have a working language server, you probably don't need ctags.

## Clone my config

- cd
- mkdir -p .config/nvim
- cd .config
- mv nvim nvim.old
- git clone https://github.com/nico-amsterdam/neovim_config nvim\
Or fork the github repo to save your own adjustments in git.

## Install jsregexp for LuaSnip
- nvim
- :checkhealth luasnip
- :lua =vim.api.nvim_get_runtime_file("lua/luasnip/init.lua", true)

- cd ~/.local/share/nvim/lazy/LuaSnip/lua
- make install_jsregexp

- nvim
- :checkhealth luasnip

## Manually install Elixir language server

Skip this chapter if you just want to use Elixir-tools.
Elixir-tools uses a combination of [ElixirLS](https://github.com/elixir-lsp/elixir-ls) and [Next LS](https://github.com/elixir-tools/next-ls). Either one of them can be disabled in ~/.config/nvim/lua/config/elixir-tools.lua

To use [Lexical](https://github.com/lexical-lsp/lexical), use the instructions below.

Tested with Elixir 1.17 and OTP 27. 
I use asdf to switch:
- asdf global elixir 1.17.3-otp-27

### Lexical
- cd
- mkdir -p elixir
- cd elixir
- git clone git@github.com:lexical-lsp/lexical.git
- cd lexical
- mix deps.get
- mix package
- Uncomment config function in ~/.config/nvim/lua/plugins/lsp.lua 
- Set enabled = false in ~/.config/nvim/lua/plugins/elixir-tools.lua 

<!--
### Alternative: Directly use ElixirLS
- cd
- curl -Ls -o /dev/null -w %{url_effective} https://github.com/elixir-lsp/elixir-ls/releases/latest
- mkdir -p elixir/elixir-ls
- cd elixir/elixir-ls
- wget https://github.com/elixir-lsp/elixir-ls/releases/download/v0.25.0/elixir-ls-v0.25.0.zip
- unzip elixir-ls-v0.25.0.zip && rm elixir-ls-v0.25.0.zip
- chmod +x language_server.sh
- Uncomment config function in ~/.config/nvim/lua/plugins/lsp.lua 
- Change cmd in ~/.config/nvim/lua/config/lsp.lua 
- Set enabled = false in ~/.config/nvim/lua/plugins/elixir-tools.lua 
-->

# Checks

- nvim
- :chechhealth
- :checkhealth lazy
- :checkhealth telescope


# Keys

run `vimtutor` to learn basic VIM commands

\<Leader\> = space (in normal/visual mode)

- Package manger\
  :Lazy
- Find files with telescope\
  \<Leader\>ff
- Sql client with Dadbod\
  :DBUI\
  To execute a query: :w or \<Leader\>w
- Language server\
  :LspInfo
  It cannot determine the version of ElixirLS/Next LS/Lexical, but these still work.
- Visual block mode\
  Ctrl+Q
- Tabs to spaces\
  :retab
- Split screen vertical\
  Ctrl+w v
- Split screen horizontal\
  Ctrl+w s
- Open new tab\
  :tabe
- Switch tab\
  gt
- Switch window\
  Ctrl+w + arrow
- Exit window\
  :q!
- Exit all windows\
  :qa!
- File explorer\
  :Ex
- lookup via ctag\
  g + ]

