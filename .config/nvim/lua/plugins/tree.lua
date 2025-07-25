return {
	-- 文件树插件
	{
		"nvim-tree/nvim-tree.lua",
		version = "*", -- 使用最新版本
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- 可选：图标支持
		--[[
在 Lua 插件配置中，依赖项的完整格式为："GitHub用户名/仓库名"
示例说明：
dependencies = { "nvim-tree/nvim-web-devicons" }
nvim-tree：插件开发者的 GitHub 用户名（或组织名）
nvim-web-devicons：具体的插件仓库名称
这表示该依赖项是一个独立的插件，由 nvim-tree 组织维护，但 与主插件 nvim-tree.lua 是分离的
]]
		lazy = true,
		keys = { -- 定义懒加载的快捷键
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Tree", mode = { "n" } },
		},
		config = function()
			-- 基本配置
			require("nvim-tree").setup({
				-- 视图设置
				view = {
					width = 35, -- 侧边栏宽度
					side = "left", -- 显示位置：left/right
					relativenumber = true, -- 显示相对行号
					signcolumn = "yes", -- 保留空间防止内容偏移
				},
				-- 文件操作
				actions = {
					open_file = {
						quit_on_open = false, -- 保持文件树开启以提高操作效率
					},
				},

				-- 过滤文件
				filters = {
					dotfiles = false, -- 显示隐藏文件（以 . 开头的文件）
					custom = { ".DS_Store" }, -- 隐藏指定文件
				},
				-- 图标设置（需安装 nvim-web-devicons）
				renderer = {
					indent_markers = {
						enable = true,
					}, -- 显示层级缩进线
					icons = {
						glyphs = {
							folder = {
								arrow_closed = "▶", -- 折叠目录图标
								arrow_open = "▼", -- 展开目录图标
							},
						},
					},
				},
			})
		end,
	},
}
