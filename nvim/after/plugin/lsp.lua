vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }

		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
		vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
		vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
		vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
		vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
		vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
		vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	end,
})

local blink_capabilities = require("blink.cmp").get_lsp_capabilities()

local default_setup = function(server)
	if server == "rust_analyzer" then
		return
	end

	if server == "jdtls" then
		return
	end

	require("lspconfig")[server].setup({
		capabilities = blink_capabilities,
	})
end

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"eslint",
		"rust_analyzer",
		"angularls@17.1.1",
		"pylsp",
		"cssls",
		"jsonls",
		"html",
		"yamlls",
	},
	automatic_enable = {
		exclude = {
			"rust_analyzer",
		},
	},
	handlers = {
		default_setup,
		lua_ls = function()
			require("lspconfig").lua_ls.setup({
				capabilities = blink_capabilities,
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = {
								vim.env.VIMRUNTIME,
							},
						},
					},
				},
			})
		end,
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
