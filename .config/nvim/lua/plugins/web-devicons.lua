return {
    {
      "https://github.com/nvim-tree/nvim-web-devicons.git",
      lazy = true, -- 延迟加载（推荐）
      config = function()
        require("nvim-web-devicons").setup()
      end,
    }
  }
--[[
修改为新的镜像地址，ruquire,不更改，
关键结论
仓库地址：决定插件代码从哪里克隆（你已修改为 Gitee 的 SSH 地址）。
require 名称：由插件本身的代码决定（与仓库地址无关），因此保持 require("nvim-web-devicons") 即可。
原理说明
插件地址（"git@gitee.com:.../nvim-web-devicons.git"）：
仅影响插件代码的下载来源，与模块名无关。
即使地址更换，只要插件代码内容与原版一致，模块名仍为 nvim-web-devicons。
require 的模块名：
由插件的 Lua 代码结构（如 lua/nvim-web-devicons/init.lua）决定。
若插件镜像与原版代码一致，无需修改。
关键结论
依赖项地址需与主插件一致：若主插件使用 Gitee 的 SSH 地址（git@gitee.com:...），依赖项也应指向同一镜像地址。
模块名无需修改：require("nvim-web-devicons") 仍保持原样，与仓库地址无关。
为什么必须修改依赖项地址？
依赖关系隔离性：
Lazy.nvim 默认会从 GitHub 下载 nvim-tree/nvim-web-devicons，但如果你已将其镜像到 Gitee，需明确指定地址，否则会因网络问题安装失败。
代码一致性：
确保主插件和依赖项均来自同一镜像源，避免版本不兼容（例如 Gitee 镜像未及时同步原仓库更新）。
]]
