API_URL="http://192.168.0.3:8080/health"
SSL_API_URL="https://192.168.0.3:8082/health"

# 探测接口（设置 1 秒超时）
if curl -s --max-time 1 "$API_URL" > /dev/null; then
    # 在线：显示绿色的图标 (需 Nerd Font)
    echo "%{F#a6e3a1}   GO %{F-}"
else
    if curl -s --max-time 1 "$SSL_API_URL" > /dev/null; then
        # 离线：显示红色的警告
        echo "%{F#a6e3a1}   GO %{F-}"
    else
        echo "%{F#f38ba8}   GO%{F-}"
    fi
fi
