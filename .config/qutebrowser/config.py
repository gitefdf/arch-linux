config.load_autoconfig(False)
c.fonts.default_size = "16pt"
# 默认情况下 qutebrowser 是使用英语的，这会导致很多网页也使用英语呈现
c.content.headers.accept_language = "zh-CN;q=0.9,en-US,en;q=0.8"

# 修改 header，伪装成 chrome。qutebrowser 的内核本就是 chromium，这样做问题不大
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

# 修改一下 hint 的外观已经备选的字母
# 默认情况下这些字母只有 hjkl 那一行，这里我选择增加一行
c.hints.padding = {"bottom": 1, "left": 5, "right": 3, "top": 1}
c.hints.chars = "asdfghjklzxcvbnm"
c.hints.border = "none"

c.hints.selectors["video"] = ["video"]
c.hints.selectors["all"].extend([".qutebrowser-custom-click"])
# 启用平滑滚动（只针对 hjkl 生效）
c.scrolling.bar = "always"
# c.scrolling.smooth = True

# 修改底部状态栏的大小并精简呈现的内容
c.statusbar.padding = {"bottom": 2, "left": 0, "right": 5, "top": 2}
c.statusbar.widgets = ["search_match", "text:|", "url", "text:|", "scroll"]

# 增加上面标签栏的大小
c.tabs.padding = {"bottom": 5, "left": 10, "right": 10, "top": 5}

# 设置启动页面、默认页面、搜索引擎
c.url.default_page = "https://bing.com"
c.url.searchengines = {"DEFAULT": "https://bing.com/search?q={}"}
c.url.start_pages = "https://bing.com"

config.source("keymaps.py")
