return {
	"zbirenbaum/copilot.lua",
	-- cmd = "Copilot",
	cond = false,
	event = "VeryLazy",
	build = ":Copilot auth",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = false },
			panel = { enabled = false },
		})
	end,
}
