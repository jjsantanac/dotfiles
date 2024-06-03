vim.o.termguicolors = true
vim.wo.relativenumber = true
vim.opt.nu = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.updatetime = 50
vim.opt.scrolloff = 8
vim.api.nvim_set_option('clipboard', 'unnamedplus')

vim.g.sonokai_style = 'andromeda'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- vim.lsp.set_log_level("debug")
vim.api.nvim_set_var('mapleader', ' ');

require("lazy").setup("plugins")
vim.cmd [[colorscheme kanagawa]]
