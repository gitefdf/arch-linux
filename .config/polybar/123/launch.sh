#!/usr/bin/env bash

# █▀█ █▀█ █░░ █▄█ █▄▄ █▀█ █▀█
# █▀▀ █▄█ █▄▄ ░█░ █▄█ █▀█ █▀▄
# Terminate already running bar instances

# 如果启用了 IPC，就优雅退出
polybar-msg cmd quit

# 确保完全退出（保险方案）
killall -q polybar

# 等待 Polybar 完全退出
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done
killall -q polybar
# pkill -f polybar

# 等待 Polybar 进程退出
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# polybar top -c $HOME/.config/polybar/nord/config-top.ini &
# polybar bottom -c $HOME/.config/polybar/nord/config-bottom.ini &
# 启动 Polybar
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
      # MONITOR=$m polybar --reload example &
      MONITOR=$m polybar example -c ~/.config/polybar/config.ini &
  done
  # for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  #   # MONITOR=$m polybar --reload example &
  #   MONITOR=$m polybar top -c $HOME/.config/polybar/nord/config-top.ini &
  # done
else
  polybar example -c ~/.config/polybar//config.ini &
fi
