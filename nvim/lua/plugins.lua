return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'rebelot/kanagawa.nvim',
    config = function() vim.cmd([[colorscheme kanagawa-wave]]) end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  { 'tpope/vim-fugitive' },
  { 'lewis6991/gitsigns.nvim' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'nvim-tree/nvim-web-devicons' },
  { 'romgrk/barbar.nvim' },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  }
}
