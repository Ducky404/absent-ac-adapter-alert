#!/bin/bash
while true
    do 
        export DISPLAY=:0.0
        ac_power=`cat /sys/class/power_supply/ACAD/online`
	batt_status=`cat /sys/class/power_supply/BAT1/status`
	batt_level=`cat /sys/class/power_supply/BAT1/capacity`
        if [ $ac_power -lt 1 ]; then
	    if [ $batt_status="Discharging" ]; then
           	notify-send -u critical "AC Adapter Unplugged!" "Device Battery Remaining: "$batt_level"%"
            fi
	fi
        sleep 30
    done
