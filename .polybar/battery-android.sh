#!/bin/sh

battery_arr=($(dbus-send --session --print-reply --dest="org.kde.kdeconnectd" /modules/kdeconnect/devices/49703170e3c3a062 org.kde.kdeconnect.device.battery.charge))
ac_arr=($(dbus-send --session --print-reply --dest="org.kde.kdeconnectd" /modules/kdeconnect/devices/49703170e3c3a062 org.kde.kdeconnect.device.battery.isCharging))

ac=${ac_arr[9]}
battery_percent=$((${battery_arr[9]}))

if [ "$ac" = "true" ]; then
    icon="#1"
    echo "$battery_percent%!"
else
    if [ "$battery_percent" -gt 85 ]; then
        icon="#21"
    elif [ "$battery_percent" -gt 60 ]; then
        icon="#22"
    elif [ "$battery_percent" -gt 35 ]; then
        icon="#23"
    elif [ "$battery_percent" -gt 10 ]; then
        icon="#24"
    else
        icon="#25"
    fi

    echo "$battery_percent%"
fi
