return{
	"lervag/vimtex",
	lazy = false,
	init = function ()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
		options = {
		"-shell-escape",
		-- '-silent',
		"-verbose",  -- 输出详细编译日志
		"-file-line-error",
		"-synctex=1",
		"-interaction=nonstopmode",
		},
	}
		vim.g.vimtex_compiler_latexmk_engines ={
			['_'] = '-xelatex'
		}
		vim.g.vimtex_view_zathura_use_synctex = 1
		vim.g.vimtex_view_zathura_check_libsynctex = 1
		vim.g.vimtex_view_automatic = 0
		vim.g.vimtex_complete_enable = 1
--折叠
		-- vim.g.vimtex_fold_enabled = 1
		-- vim.g.vimtex_fold_manual = 1
		-- vim.opt.foldmethod = "manual"
		-- -- vim.opt.foldexpr = "vimtex#fold#level(v:lnum)"
		-- -- vim.opt.foldtext = "vimtex#fold#text()"
		-- vim.opt.fillchars:append { fold = " " }
		-- vim.api.nvim_set_hl(0, 'Folded', {bg='NONE', fg='#ff8700'})
-- --缩进
		vim.g.vimtex_indent_enabled = 1
		vim.g.vimtex_indent_delims = { ['{'] = 1, ['['] = 1 }
		vim.g.vimtex_indent_on_ampersands = 1
		vim.g.vimtex_indent_tikz_commands = 1
--syntax
		-- vim.g.vimtex_syntax_enabled = 1
		vim.g.vimtex_syntax_conceal = {
			math_bounds = 0,
			sections = 1,

		}
		vim.g.vimtex_syntax_conceal_disable = 1
		-- vim.g.vimtex_syntax_conceal_disable = 0
		-- vim.g.vimtex_syntax_nested = 1
		vim.opt.conceallevel = 1
		vim.opt.concealcursor = "nc"
	vim.g.vimtex_quickfix_mode = 0
	vim.g.vimtex_quickfix_open_on_warning = 0
	end,
	config =function ()
	end,
keys = {

  }
}

