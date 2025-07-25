
vim.opt.number = true -- 显示行号
vim.opt.relativenumber = true -- 相对行号
-- vim.opt.cursorline = true --高亮当前行
--vim.opt.colorcolumn = "100"
vim.opt.wrap = true --自动换行
vim.opt.list = true
vim.opt.listchars = { space = ".", tab = ". " } -- 仅保留单宽度符号
-- Lua 配置
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#FF5F5F" }) -- 灰色
-- 全局设置
vim.opt.expandtab = false -- 不把 Tab 转为空格
vim.opt.tabstop = 4 -- 一个 Tab 字符显示为 4 个空格宽度
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0 -- 使用 >> << 自动缩进时的宽度
vim.opt.smarttab = false -- 根据上下文使用合适数量的空格
vim.opt.autoindent = false -- 关闭自动继承上一行的缩进（包括空格缩进）
vim.opt.smartindent = true     -- 开启智能缩进，根据代码结构自动缩进
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.showmode = false
vim.opt.autoread = true
vim.opt.clipboard = "unnamedplus"
vim.opt.backup = false
vim.opt.swapfile = false

vim.o.scrolloff = 14

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
--keymaps
--vim.keymaps.set(mode, lhs, rhs, opts)
local keys = vim.keymap.set
	keys( "n", "<leader>h", "<Cmd>wincmd h<CR>", {desc = "窗口 ←"} )
	keys( "n", "<leader>j", "<Cmd>wincmd j<CR>", {desc = "窗口 ↓"} )
	keys( "n", "<leader>k", "<Cmd>wincmd k<CR>", {desc = "窗口 ↑"} )
	keys( "n", "<leader>l", "<Cmd>wincmd l<CR>", {desc = "窗口 →"} )
	keys( "n", "<localleader>h", "<Cmd>helptags ~/.config/nvim/doc<CR>", {desc = "helptags"})




--rime
vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
	vim.fn.system("fcitx5-remote -c")  -- 退出 insert 时切换到英文
	end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
	vim.fn.system("fcitx5-remote -o")  -- 退出 insert 时切换到英文
	end,
})






-- vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.opt_local.expandtab = false
-- 	end,
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "markdown",
-- 	callback = function()
-- 		vim.opt_local.expandtab = true      -- 使用空格代替 Tab
-- 		vim.opt_local.tabstop = 2           -- 一个 Tab 显示为 2 个空格
-- 		vim.opt_local.softtabstop = 2       -- 输入 Tab 时插入 2 个空格
-- 		vim.opt_local.shiftwidth = 2        -- 自动缩进使用 2 个空格
-- 		vim.opt_local.smarttab = true       -- 智能 Tab
-- 	end,
-- })
--
