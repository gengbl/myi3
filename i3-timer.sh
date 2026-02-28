
bash
#!/usr/bin/env bash

# 1. 通过 Rofi 获取时间（分钟）
minutes=$(echo "" | rofi -dmenu -p "设定闹钟 (分钟):" -theme-str 'window {width: 200px;}')
# 检查输入是否为数字，防止 at 命令报错
[[ ! $minutes =~ ^[0-9]+$ ]] && exit

# 2. 获取提醒内容
message=$(echo "时间到！" | rofi -dmenu -p "提醒内容:" -theme-str 'window {width: 400px;}')
[ -z "$message" ] && message="时间到！"

# 3. 使用 at 提交任务
# 注意：我们把要执行的 UI 命令（notify 和 zenity）打包成字符串传给 at
echo "
  export DISPLAY=:0
  export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/\$(id -u)/bus
  notify-send -u critical -i appointment-soon '⏰ 定时器' '$message'
  zenity --warning --text='$message' --title='i3 定时器' --width=300
" | at now + "$minutes" minutes

# 4. 可选：在 Polybar 或终端反馈一下
notify-send "定时器已设定" "将在 $minutes 分钟后提醒：$message"
