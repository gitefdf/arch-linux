return {
	"akinsho/bufferline.nvim",
	version = "*",
	lazy = false,
	-- cond = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- event = 'VeryLazy',
	config = function()
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		require("bufferline").setup({
			options = {
				show_buffer_close_icons = true,
				show_close_icon = true,
				separator_style = "slant", -- "thick", "thin", "slant"

				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(_, _, diagnostics_dict, _)
					local indicator = " "
					for level, number in pairs(diagnostics_dict) do
						local symbol
						if level == "error" then
							symbol = " "
						elseif level == "warning" then
							symbol = " "
						else
							symbol = " "
						end
						indicator = indicator .. number .. symbol
					end
					return indicator
				end,
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				mocha = {
					background = { fg = mocha.text }, -- mocha 主题时，背景文字颜色为 mocha.text
				},
			}),
		})
	end,

	keys = {
		{ "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", desc = "前一页" },
		{ "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", desc = "后一页" },
	},
}
