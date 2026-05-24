# neovim_config
My Neovim config with:
- package manager: lazy-nvim
- filesearch: Telescope &amp; ctags
- sql-client: Dadbod-ui
- language servers: Expert
- debugger: nvim-dap, nvim-dap-ui, ElixirLs 
- autocomplete: nvim-cmp 
- statusbar: lualine

# Ubuntu installation

## Install Neovim

- sudo snap install nvim --classic
\
Minimum version 0.12
- sudo apt install lua5.1 liblua5.1-dev -y
- wget https://luarocks.org/releases/luarocks-3.12.2.tar.gz
- tar zxpf luarocks-3.12.2.tar.gz
- cd luarocks-3.12.2/
- ./configure && make && sudo make install
- sudo luarocks install luasocket

## Install dependencies

- sudo apt-get install ripgrep -y
- sudo apt-get install fd-find -y

Optional:
- sudo apt-get install xsel
\
Clipboard tool
- sudo apt-get install exuberant-ctags -y
\
see https://randre03.github.io/ctags_and_neovim/
\
If you have a working language server, you probably don't need ctags.

## Clone my config

- cd
- mkdir -p .config/nvim
- cd .config
- mv nvim nvim.old
- git clone https://github.com/nico-amsterdam/neovim_config nvim\
Or fork the github repo to save your own adjustments in git.

## Install tree-sitter

To install tree-sitter-cli, the rust package manager cargo is needed. Install with:
- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

Then install tree-sitter with cargo:
- cargo install tree-sitter-cli

Make sure the 'tree-sitter' command is in the PATH

## Install jsregexp for LuaSnip
- nvim
- :checkhealth luasnip
- :lua =vim.api.nvim_get_runtime_file("lua/luasnip/init.lua", true)

- cd ~/.local/share/nvim/lazy/LuaSnip/lua
- make install_jsregexp

- nvim
- :checkhealth luasnip


## Install expert LSP

- nvim
- :MasonInstall expert

## Syntax highlighting for Elixir

- nvim
- :TSManager

Select and install (i): css, html_tags, html, elixir, heex, eex and optionally erlang 

## Debugger

The debugger is a bit slow to start. Several attempts to start debugging are needed.

Install via Mason
- nvim
- :Mason
- In the list of DAP debuggers (3), select elixir-ls and install with 'i'

# Checks

- nvim
- :chechhealth
- :checkhealth lazy
- :checkhealth telescope
- :checkhealth vim.lsp


# Keys

run `vimtutor` to learn basic VIM commands

\<Leader\> = space (in normal/visual mode)

- Package manager\
  :Lazy
- Find files with telescope\
  \<Leader\>ff
- Sql client with Dadbod\
  :DBUI\
  To execute a query: :w or \<Leader\>w
- Goto definition\
  gd
- Goto reference\
  gr
- Place breakpoint\
  \<Leader\>b
- Launch debugger / continue to next breakpoint\
  F5
- Debug step / step over / step out\
  F1 / F2 / F3
- Switch back to debug windows\
  F7
- Breakpoint condition\
  \<Leader\>B
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
- switch to previous file\
  :e#
- switch to first loaded file\
  :e#1
- load next file when nvim was started with a list of files\
  :n
- Search code\
  :Telescope lsp_workspace_symbols
- Start recording macro\
  q\<letter\>
- Stop recording macro\
  q
- Play macro\
  @\<letter\>
- Play last macro\
  Q
