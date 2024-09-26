require("conform").setup({
	formatters_by_ft = {
		-- Use a sub-list to run only the first available formatter
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		html = { "prettierd" },
		css = { "prettierd" },
		less = { "prettierd" },
		rust = { "rustfmt" },
		lua = { "stylua" },
		json = { "prettierd" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		-- lsp_fallback = true,
	},
})
