#!/usr/bin/env bash

# 获取 atq 任务行数
count=$(atq | wc -l)

if [ "$count" -gt 0 ]; then
    # 有任务时显示图标和数字（使用你之前的 Font Awesome 圆圈或闹钟图标）
    # 这里的 \uf017 是 Font Awesome 的闹钟图标 (clock)
    echo "%{F#7aa2f7}⏰%{F-} $count"
else
    # 没任务时显示灰色图标或干脆隐藏
    echo "%{F#FF5f89}⏰%{F-} 0"
    # 如果你想没任务时彻底隐藏，直接改写为: echo ""
fi

