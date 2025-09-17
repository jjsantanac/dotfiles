return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"mfussenegger/nvim-dap",
		},
	},
	{ "mfussenegger/nvim-jdtls", dependencies = { "mfussenegger/nvim-dap" } },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{ "mfussenegger/nvim-dap" },
	{ "rebelot/kanagawa.nvim" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "neovim/nvim-lspconfig" },
	{ "L3MON4D3/LuaSnip" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "tpope/vim-fugitive" },
	{ "lewis6991/gitsigns.nvim" },
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-tree/nvim-web-devicons" },
	{ "j-hui/fidget.nvim", opts = {} },
	{ "stevearc/conform.nvim", opts = {} },
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
		},
	},
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		build = "cargo build --release",

		opts = {
			keymap = { preset = "enter" },
			completion = { documentation = { auto_show = true } },
		},
		opts_extend = { "sources.default" },
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		lazy = false,
	},
}
