#! /bin/bash

function power {
	options="Shutdown\nRestart\nSleep\nLock"
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "Shutdown" ]]; then
		poweroff
	elif [[ $selected = "Restart" ]]; then
		reboot
	elif [[ $selected = "Sleep" ]]; then
		systemctl suspend && i3lock
	elif [[ $selected = "Lock" ]]; then
		slock
	fi
}

power
