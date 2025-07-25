return {
	"folke/noice.nvim",
	event = "VeryLazy",
	-- cond = false,
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true, -- 搜索栏回到底部
			command_palette = true, -- 命令行和补全菜单并列显示
			long_message_to_split = true, -- 长信息进入分屏
			inc_rename = false,
			lsp_doc_border = false,
		},
		-- add any options here
		messages = {
			enabled = true, -- enables the Noice messages UI
		},
		routes = {
			filter = { event = "msg_show" },
			opts = { timeout = 1500 },
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
}
