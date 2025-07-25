--[[不要将lazy.lua放在\lua或\nvim下，因为当 Neovim 执行 require("lazy") 时，会加载 lazy.lua，而该文件内部又尝试再次 require("lazy")，导致无限循环。
如果非要这样做可以将lazy.lua重命名为qew.lua
]]

require('Lazy.lazy')

require("basic")
