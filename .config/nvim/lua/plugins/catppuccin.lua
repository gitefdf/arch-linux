return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	-- cond = false,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
-- 设置 Neovim 背景透明
-- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "VertSplit",{ bg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "StatusLine",{ bg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
--
-- vim.api.nvim_set_hl(0, "NvimTreeNormal",         { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NvimTreeNormalNC",       { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer",    { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NvimTreeVertSplit",      { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NvimTreeStatusLine",     { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC",   { bg = "NONE" })
