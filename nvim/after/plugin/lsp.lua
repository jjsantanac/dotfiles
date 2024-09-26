local lsp = require("lsp-zero").preset({
	name = "recommended",
	set_lsp_keymaps = false,
	suggest_lsp_servers = false,
	sign_icons = false,
})

lsp.configure("yamlls", {
	settings = {
		yaml = {
			keyOrdering = false,
			schemas = {
				["/Users/joshuasantana/Documents/projects/deployment-konfiguration/dp.schema.json"] = "*.dp.yaml",
			},
		},
	},
})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"eslint",
		"rust_analyzer",
		"angularls@17.1.1",
		"pylsp",
		"cssls",
		"jsonls",
		"html",
		"yamlls",
	},

	handlers = {
		lsp.default_setup,
		-- lua_ls = function()
		--   local lua_opts = lsp.nvim_lua_ls()
		--   require('lspconfig').lua_ls.setup(lua_opts)
		-- end,
		-- tsserver = function()
		--   require('lspconfig').tsserver.setup({})
		-- end,
		-- eslint = function()
		--   require('lspconfig').eslint.setup({})
		-- end,
	},
})

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	},
})
vim.diagnostic.config({
	update_in_insert = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
	},
})
