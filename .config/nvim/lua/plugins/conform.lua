return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			tex = {'tex-fmt'},
			markdown = {'markdownlint-cli2'}
		},
	},
	keys = { -- 定义懒加载的快捷键
		{
			"<localleader>f",
			function()
				require("conform").format()
			end,
			desc = "Format current file",
			mode = { "n" },
		},
	},
}
