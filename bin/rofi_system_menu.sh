#!/bin/bash

list=(
  "Lock Screen" "gnome-screensaver-command -l"
  "Logout"      "gnome-session-quit --force"
  "Reboot"      "systemctl reboot"
  "Suspend"     "systemctl suspend"
  "Shutdown"    "systemctl poweroff"
)

for (( i=1; i<=$((${#list[@]}/2)); i++)); do
	[[ -z "$@" ]] && echo "${i}. ${list[$i*2-2]}" && continue
	[[ "$@" == "${i}. ${list[$i*2-2]}" ]] && command="${list[$i*2-1]}" && break
done
eval "${command:-:}"
