
return
{
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'nvim-tree/nvim-web-devicons'
	},
	ft = 'markdown',
	-- lazy = true,
	config = function ()
		require('render-markdown').setup({
		file_types = { 'markdown', 'txt'},
				})
	end,
	keys = {
		{'<localleader>m', '<cmd>RenderMarkdown toggle<cr>', desc = 'Markdown', mode = {'n'}},
	}
}
