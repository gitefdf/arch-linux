
return {
	'nvim-treesitter/nvim-treesitter',
	main = 'nvim-treesitter.configs',
	branch = 'master', -- 详见本系列的附录
	event = 'VeryLazy',
	build = ':TSUpdate',
	opts = {
		ensure_installed = { 'lua' },
		highlight = { enable = true }
	},
}

