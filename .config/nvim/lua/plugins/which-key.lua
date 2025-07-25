return{
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		triggers = {
			{ "<auto>", mode = "nxso" },
		},
		keys = {
			scroll_down = '<c-j>',
			scroll_up = '<c-k>',
		},
		sort = { "local", "order", "group", "alphanum", "mod" }--排序
	},
	keys = {
		{"<leader>wq", function()require("which-key").show({ global = false })end, desc = "Buffer Local Keymaps (which-key)"},
		{'<leader>ww', '<cmd>WhichKey<CR>', desc = 'WhichKey menu'},
		{'<leader>we', '<cmd>checkhealth which-key<CR>', desc = 'WhichKey health'}
	},
}
