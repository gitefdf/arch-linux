-- ~/AppData/Local/nvim/init.lua
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	-- install = { colorscheme = {'catppuccin'} },
	defaults = {
		lazy = false,
		version = "*",-- 使用最新稳定版本（若插件支持语义化版本）
	},
	checker = { enable = true } --自动检查插件更新
})

