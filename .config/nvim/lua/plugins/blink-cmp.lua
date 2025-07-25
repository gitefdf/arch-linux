return {
	"Saghen/blink.cmp",
	version = "1.*",
	event = "VeryLazy",
	dependencies = {
		"micangl/cmp-vimtex",
		"fang2hou/blink-copilot",
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
	opts = {
		completion = {
			--光标悬停显示帮助文档
			documentation = { auto_show = true },
		},
		-- signature = { enable = true },
		keymap = {
			preset = "super-tab",
		},
		-- apperance= {
		-- 	nerd_font_variant = ''
		-- },
		snippets = { preset = "luasnip" },
		sources = {
			default = { "path", "buffer", "lsp", "copilot", "snippets" },
			providers = {
				-- vimtex = {
				-- 	name = "vimtex",
				-- 	module = "blink.compat.source",
				-- 	opts = {}, -- 这里可以传递给 cmp-vimtex 的设置（如需）
				-- },

				copilot = {
					name = "copilot",
					module = "blink-copilot",
					score_offset = 100,
					async = true,
				},
				-- latex = {
				-- 	name = "Latex",
				-- 	module = "blink-cmp-latex",
				-- },
			},
		},
		cmdline = {
			sources = function()
				local cmd_type = vim.fn.getcmdtype()
				if cmd_type == "/" then
					return { "buffer" }
				elseif cmd_type == ":" then
					return { "cmdline" }
				else
					return {}
				end
			end,
			keymap = { preset = "super-tab" },
			completion = {
				menu = { auto_show = true },
			},
		},
	},
}
