# Created by newuser for 5.9
export EDITOR=nvim
autoload -Uz compinit promptinit
compinit
promptinit
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# 将默认命令行提示设置为 walters 主题
prompt walters
autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'
alias nv='=nvim'
alias c='clear'
alias blue='sudo systemctl start bluetooth.service'
alias x='xmodmap ~/.Xmodmap'
alias pavu='LANG=zh_CN.UTF-8 pavucontrol'
#
#
alias fcitx5-configtool='LANG=zh_CN.UTF-8 fcitx5-configtool'
#
alias goldendict='LANG=zh_CN.UTF-8 goldendict >/dev/null 2>&1 & disown'

#
alias qute='LANG=zh_CN.UTF-8 qutebrowser'
#bilibili
alias bili='~/bilibili/bin/bilibili & disown'
#
alias v2='~/v2rayN-linux-64/v2rayN & disown'
#google
alias chrome='google-chrome-stable --disable-gpu > /dev/null 2>&1 &'
#firefox
alias fire='nohup firefox > /dev/null 2>&1 &'
#
alias reload='source ~/.zshrc'

#yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}


# fzf configuration for Arch Linux
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_OPTS="\
  --preview 'bat --style=numbers --color=always {}' \
  --border \
  --prompt='' \
  --style=full\
"
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_COMMAND='fd'
eval "$(zoxide init zsh)"


