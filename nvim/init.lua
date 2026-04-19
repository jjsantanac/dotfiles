local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_set_var("mapleader", " ")
vim.o.termguicolors = true
vim.wo.relativenumber = true
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.updatetime = 50
vim.opt.scrolloff = 8
vim.api.nvim_set_option_value("clipboard", "unnamedplus", {})

require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- automatically check for plugin updates
	checker = { enabled = true },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"python",
		"javascript",
		"typescript",
		"typescriptreact",
		"rust",
		"lua",
		"vimdoc",
		"query",
		"dockerfile",
		"html",
		"css",
		"json",
		"bash",
		"go",
		"sql",
		"toml",
		"yaml",
		"markdown",
		"markdown_inline",
		"gitcommit",
		"comment",
		"diff",
	},
	callback = function()
		vim.treesitter.start()
	end,
})
vim.cmd([[colorscheme kanagawa-wave]])
