return {
	"ibhagwan/fzf-lua",
	cmd = "FzfLua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {},
	keys = {
		{ "<leader>fd", "<cmd>FzfLua grep_curbuf<cr>", desc = "Search in current file", mode = { "n" } },
		{ "<leader>ff", "<cmd>FzfLua<cr>", desc = "Fzf", mode = { "n" } },
	},
}
