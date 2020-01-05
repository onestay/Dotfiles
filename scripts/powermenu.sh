#!/bin/sh

poweroff="Poweroff"
reboot="Reboot"
lock="Lock"
suspend="Suspend"
logout="Log-Out"

options="$poweroff\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | rofi -dpi 192 -dmenu -i)"

case $chosen in
	$poweroff)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		physlock
		;;
	$suspend)
		systemctl suspend
		;;
	$logout)
		bspc quit
esac
