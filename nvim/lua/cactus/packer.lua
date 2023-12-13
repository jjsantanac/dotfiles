-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  --use({ "catppuccin/nvim", as = "catppuccin", config = function() vim.cmd [[colorscheme catppuccin-mocha]] end })
  --use({ 'folke/tokyonight.nvim', as = 'tokyonight', config = function() vim.cmd("colorscheme tokyonight-moon") end })
  --use({ 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd("colorscheme rose-pine") end })
  use({ 'rebelot/kanagawa.nvim', as = 'kanagawa', config = function() vim.cmd("colorscheme kanagawa-wave") end })
  --use({ 'Mofiqul/dracula.nvim', as = 'dracula', config = function() vim.cmd [[colorscheme dracula-soft]] end })

  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }
  use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'romgrk/barbar.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
end)
