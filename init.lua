
-- Basic settings
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 4 -- Number of spaces a tab represents
vim.o.shiftwidth = 4 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors

vim.cmd('colorscheme habamax')
vim.cmd('set modifiable')
vim.cmd('set tags=./tags;$HOME,tags;')

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- set your leader and local leader key
-- make sure to set `mapleader` and `maplocalleader` before lazy so your mappings are correct
vim.g.mapleader = ' ' -- Space as the leader key
vim.g.maplocalleader = "," -- using comma as local leader
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

require("config.lazy")
