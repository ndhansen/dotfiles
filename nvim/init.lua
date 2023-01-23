-- Remap leader
vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "")

-- Load plugins
require("plugins")
require("mappings")

-- Remap jk to escape and shorten timeout
vim.keymap.set("i", "jk", "<Esc>")
vim.o.timeoutlen = 500

-- Set the clipboard
vim.o.clipboard = vim.o.clipboard .. "unnamedplus"

-- Show line numbers
vim.o.number = true

-- move over soft wrapped lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Highlight matching braces
vim.o.showmatch = true

-- Set a number of lines to be shown beneath the current one
vim.o.scrolloff = 3

-- Set line break on word
vim.o.linebreak = true

vim.o.hlsearch = true  -- Highlight all search results
vim.o.smartcase = true  -- Enable smart-case search
vim.o.incsearch = true  -- Searches for strings incrementally

vim.o.autoindent = true  -- Auto-indent new lines
vim.o.smarttab = true  -- Enable smart-tabs
vim.o.smartindent = true  -- Enable smart-indent
vim.o.expandtab = true  -- Use spaces instead of tabs
vim.o.shiftwidth = 4  -- Number of auto-indent spaces
vim.o.softtabstop = 4  -- Number of spaces per Tab

vim.o.background = "dark"  -- or light if you want light mode
vim.cmd("colorscheme gruvbox")
