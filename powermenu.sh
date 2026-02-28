bash
#!/bin/bash
chosen=$(echo -e "Lock\nLogout\nReboot\nShutdown\nSuspend" | rofi -dmenu -p "System" -fixed-num-lines false -theme-str '
listview {
    fixed-height: false;
    dynamic: true;
    lines:6;
}

window {
    width:300px;
}
'
)
case "$chosen" in
    Lock) i3lock ;;
    Logout) i3-msg exit ;;
    Reboot) reboot ;;
    Suspend) systemctl suspend ;;
    Shutdown) poweroff ;;
esac
