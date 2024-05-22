#!/bin/bash
 
lock=" Lock"
logout=" Logout"
shutdown="襤 Poweroff"
reboot=" Reboot"
sleep=" Suspend"
 
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu -i -p "Powermenu" \
		  -theme "$HOME/.config/rofi/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
  swaylock
elif [ "$selected_option" == "$logout" ]
then
  hyprctl dispatch exit
elif [ "$selected_option" == "$shutdown" ]
then
  systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
  systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
  systemctl suspend
else
  echo "No match"
fi
