#!/bin/bash


rofi_command="rofi -theme /home/sofy/.config/rofi/theme/powermenu_alt.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
conf5=" 5"
conf4=" 4"
wifi=" Wifi"
bluetooth=" Bluetooth"
control=" Pavucontrol"

# Variable passed to rofi
options="$wifi\n$bluetooth\n$control\n$conf6\n$conf5"

chosen="$(echo -e "$options" | $rofi_command -p "  Menu" -dmenu -selected-row 0)"
case $chosen in
    $conf5)
        # code
        ;;
    $conf4)
        # code
        ;;
    $wifi)
        nm-connection-editor
        ;;
    $bluetooth)
        blueman-manager
        ;;
    $control)
        # code
        pavucontrol
        ;;
esac

