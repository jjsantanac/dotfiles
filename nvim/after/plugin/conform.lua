require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		html = { "prettierd" },
		css = { "prettierd" },
		rust = { "rustfmt" },
		lua = { "stylua" },
		json = { "prettierd" },
		python = { "ruff_format" },
	},
	format_on_save = {
		timeout_ms = 5000,
		lsp_format = "fallback",
	},
})
