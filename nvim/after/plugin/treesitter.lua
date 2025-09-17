require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"javascript",
		"typescript",
		"python",
		"c",
		"lua",
		"vim",
		"java",
		"vimdoc",
		"query",
		"html",
		"css",
		"json",
		"xml",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
