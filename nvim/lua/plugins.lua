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
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"mfussenegger/nvim-jdtls",
		dependencies = { "mfussenegger/nvim-dap" },
	},
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{
		"mfussenegger/nvim-dap",
	},
	{
		"rcarriga/cmp-dap",
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	{ "tpope/vim-fugitive" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "nvim-tree/nvim-web-devicons" },
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	--	{
	--		"yetone/avante.nvim",
	--		event = "VeryLazy",
	--		lazy = false,
	--		version = false, -- set this to "*" if you want to always pull the latest change, false to update on release
	--		opts = {
	--			-- add any opts here
	--		},
	--		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	--		build = "make",
	--		-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	--		dependencies = {
	--			"stevearc/dressing.nvim",
	--			"nvim-lua/plenary.nvim",
	--			"MunifTanjim/nui.nvim",
	--			--- The below dependencies are optional,
	--			"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
	--			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
	--			"zbirenbaum/copilot.lua", -- for providers='copilot'
	--			{
	--				-- support for image pasting
	--				"HakonHarnes/img-clip.nvim",
	--				event = "VeryLazy",
	--				opts = {
	--					-- recommended settings
	--					default = {
	--						embed_image_as_base64 = false,
	--						prompt_for_file_name = false,
	--						drag_and_drop = {
	--							insert_mode = true,
	--						},
	--						-- required for Windows users
	--						use_absolute_path = true,
	--					},
	--				},
	--			},
	--			{
	--				-- Make sure to set this up properly if you have lazy=true
	--				"MeanderingProgrammer/render-markdown.nvim",
	--				opts = {
	--					file_types = { "markdown", "Avante" },
	--				},
	--				ft = { "markdown", "Avante" },
	--			},
	--		},
	--	},
}
