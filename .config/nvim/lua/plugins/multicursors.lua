return{
	"https://github.com/smoka7/multicursors.nvim.git",
	event = "VeryLazy",
	dependencies = {
		"https://github.com/nvimtools/hydra.nvim.git"
	},
	keys = {
		{
			mode = { "n", "v" },
			"<leader>m",
			"<cmd>MCunderCursor<cr>",
			desc = "开始多光标选择",
		},
	},

	config = function()
		require('multicursors').setup{
		hint_config = false,
		}
	

	local function is_active()
		local ok, hydra = pcall(require, 'hydra.statusline')
		return ok and hydra.is_active()
	end

	local function get_name()
		local ok, hydra = pcall(require, 'hydra.statusline')
		if ok then
		return hydra.get_name() -- 返回当前多光标模式的名称，比如 normal/insert/extend
	end
	return ''
	end
	end,
	}
--[[



--]]
