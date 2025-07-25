unbind = [
    "<Alt-1>",
    "<Alt-2>",
    "<Alt-3>",
    "<Alt-4>",
    "<Alt-5>",
    "<Alt-6>",
    "<Alt-7>",
    "<Alt-8>",
    "<Alt-9>",
    "d",
    "H",
    "J",
    "K",
    "L",
]

for unbind_lhs in unbind:
    config.unbind(unbind_lhs)

keymap = {
    "<Ctrl-1>": "tab-focus 1",
    "<Ctrl-2>": "tab-focus 2",
    "<Ctrl-3>": "tab-focus 3",
    "<Ctrl-4>": "tab-focus 4",
    "<Ctrl-5>": "tab-focus 5",
    "<Ctrl-6>": "tab-focus 6",
    "<Ctrl-7>": "tab-focus 7",
    "<Ctrl-8>": "tab-focus 8",
    "<Ctrl-9>": "tab-focus 9",
    "<Ctrl-0>": "tab-focus -1", # 最后一个标签页
    "<Ctrl-h>": "tab-prev",
    "<Ctrl-l>": "tab-next",
    "<Ctrl-j>": "forward",
    "<Ctrl-k>": "back",
    "<Ctrl-f>": "hint all hover", # 模拟鼠标悬停
    "<Ctrl-y>": "hint links yank", # 选中比ing复制链接
    "<Ctrl-q>": "tab-close",
    "<Ctrl-m>": "hint video spawn mpv {hint-url} --keep=open=yes --geometry=80%+200+200",
    # 默认情况下这两个快捷键用不到平滑滚动，但如果改为模拟多次 j / k 的调用则可以
    "<Ctrl-d>": "cmd-run-with-count 15 scroll down",
    "<Ctrl-u>": "cmd-run-with-count 15 scroll up",
}

for lhs, rhs in keymap.items():
    config.bind(lhs, rhs)
