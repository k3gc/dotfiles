#!/usr/bin/env bash


dir="$HOME/.config/bspwm"
rofi_command="rofi -theme $HOME/.config/bspwm/scripts/RiceSelector.rasi"

# Options
miku="󰔿 Miku"
boochi="󰔿 Boochi"
ria="󰔿 Ria"
sofy="󰔿 Sofy"
nia="󰔿 Nia"
sofy_32="󰔿 Sofy_32"

options="$miku\n$boochi\n$ria\n$sofy\n$nia\n$sofy_32"
chosen="$(printf "$options" | $rofi_command -dmenu)"
	case $chosen in

			$miku)
				cat <<< "miku" > $dir/rice.cfg
				bspc wm -r
				;;
			$boochi)
				cat <<< "boochi" > $dir/rice.cfg
				bspc wm -r
				;;
			$ria)
				cat <<< "ria" > $dir/rice.cfg
				bspc wm -r
				;;
			$sofy)
                cat <<< "sofy" > $dir/rice.cfg
                bspc wm -r
                ;;
			$sofy_32)
                cat <<< "sofy_32" > $dir/rice.cfg
                bspc wm -r
                ;;
			$nia)
                cat <<< "nia" > $dir/rice.cfg
                bspc wm -r
                ;;	
		esac

