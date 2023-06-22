#!/bin/bash

rofi_command="rofi -theme $HOME/.config/bspwm/scripts/theme/RiceSelector.rasi"

# Options
Option1="󰔿 Miku"
Option2="󰔿 Boochi"
Option3="󰔿 Ria"
Option4="󰔿 Sofy"
Option5="󰔿 Nia"
Option6="󰔿 Sofy_32"

options="$Option1\n$Option2\n$Option3\n$Option4\n$Option5\n$Option6"
chosen="$(printf "$options" | $rofi_command -dmenu)"
	case $chosen in

			$Option1)
				# code
				;;
			$Option2)
				# code
				;;
			$Option3)
				# code
				;;
			$Option4)
                # code
                ;;
			$Option5)
                # code
                ;;
			$Option6)
                # code
                ;;
		esac

