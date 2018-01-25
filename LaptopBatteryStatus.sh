#!/bin/bash

showInfo(){
	echo
	date
	echo
	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state
	echo
	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep time
	echo

	return
}

while :
do
	clear
	showInfo
	sleep 15
done
