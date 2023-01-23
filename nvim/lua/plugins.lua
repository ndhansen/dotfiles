-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { "ellisonleao/gruvbox.nvim" }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    cmd = {
      "NvimTreeClipboard",
      "NvimTreeClose",
      "NvimTreeFindFile",
      "NvimTreeOpen",
      "NvimTreeRefresh",
      "NvimTreeToggle",
    },
    config = function()
      require("nvim-tree-config").setup()
    end,
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key-config").setup()
    end
  }

  -- Better tabs
  use {
    "akinsho/bufferline.nvim",
    tag = "v3.*",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup({
        options = {
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true,
            },
          },
        },
      })
    end
  }

  -- airline
  use {
    "vim-airline/vim-airline",
    requires = "vim-airline/vim-airline-themes",
    config = function()
      vim.g["airline#extensions#tabline#enabled"] = 0
      vim.g.airline_powerline_fonts = 1
    end
  }

  -- Mason (lsp manager)
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
    end
  }
end)
