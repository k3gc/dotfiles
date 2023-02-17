CRE=$(tput setaf 1)
CYE=$(tput setaf 3)
CGR=$(tput setaf 2)
CBL=$(tput setaf 4)
BLD=$(tput bold)
CNC=$(tput sgr0)
OK='\n\033[0;32m OK...\033[0m'

logo () {
	
	local text="${1:?}"
	echo -en "⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣶⣶⣶⣶⣶⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⢏⣼⠿⣦⠀⣠⣶⣿⣿⡿⣟⣿⣯⣿⢯⣿⣯⣿⢿⣿⣿⣦⣄⣀⣾⢿⣎⢻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⢣⡿⣛⣷⣿⣿⣿⢿⣯⣷⣿⡿⣯⣷⣿⢿⣯⣷⡿⣿⣻⣾⢿⡿⣿⣷⣿⣙⣧⡻⣦⠀⠀⠀⠀⢀⠀⠀⠀⠀
⠀⠀⢀⣤⠀⠀⠀⣰⡟⣡⣿⣿⡿⣟⣯⣿⣾⣿⣻⣽⣾⣿⢿⣽⣾⣿⣻⣽⣿⣟⣿⣽⡿⣿⣻⣷⡿⣿⣿⣷⡘⢷⡀⠀⣀⣾⣄⠀⠀⠀
⠀⢤⣾⣿⣷⠤⠈⣻⣆⢻⣿⣯⣿⢿⣻⣽⣾⣟⣿⣯⣷⡿⣿⠋⠓⠻⠿⠿⣾⣟⣯⣿⣟⣿⣟⣷⣿⢿⣾⣟⠏⣼⣏⠀⠙⣿⠋⡉⠀⠀
⠀⠀⠈⡿⠁⢠⣾⣿⣿⣦⢿⣯⣿⣿⣿⣿⣽⣾⡿⣽⣷⣿⣿⣷⣄⠀⠀⠀⠀⠉⢿⣷⣿⣿⣾⣿⣯⣿⣿⢎⣾⣿⣿⣷⣄⠸⣴⣧⡄⠀
⠀⠀⠀⠃⣠⣿⣿⣟⣿⢿⣧⣿⡿⣿⣿⣟⣿⠏⠀⠈⠛⠿⣿⣿⢿⣧⣀⠀⠀⠀⠀⠉⢿⣿⣯⣿⢿⣻⣽⣿⣿⣻⣽⣿⣿⣄⠈⠇⠀⠀
⠀⠀⠀⣰⣿⢿⣯⣿⣟⣿⣯⣿⣟⣿⡷⣿⠃⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠛⠒⠂⠀⠀⠀⠹⣿⣽⡿⣿⣯⣿⣾⣟⣿⣾⡿⣿⣆⠀⠀⠀
⠀⠀⣴⣿⢯⣿⣟⣷⣿⣯⣷⣿⣻⣽⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣟⣿⡷⣿⣳⣿⣯⣷⣿⡽⣿⣆⠀⠀
⠀⢰⣿⡏⣾⣿⢯⣿⣾⢿⢸⣟⣿⣧⢿⡇⠀⢠⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⣤⣄⠀⠀⣿⣹⣿⣽⡟⣿⣷⡿⣯⣿⣷⢹⣿⡆⠀
⠀⣾⣿⢰⣿⡿⣿⣯⣿⡇⠸⣿⣿⢾⡎⠣⠀⠈⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠋⠀⠀⣡⡿⣯⣿⡇⢸⣿⣟⣿⡷⣿⡆⣿⣷⠀
⢰⣿⡇⣸⣿⣟⣿⡷⣿⡏⠀⢿⣿⠈⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠟⠁⣿⣿⠁⢸⣿⡿⣽⣿⢿⣇⢸⣿⡆
⢸⣿⡇⣿⣿⣾⢿⣽⣿⡇⠀⠸⣿⠀⠀⠈⠣⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠀⣿⠇⠀⢸⣿⢿⣿⣽⡿⣿⢸⣿⡇
⢸⣿⡇⣿⣷⡿⣿⣯⣷⡇⠀⠀⠘⡄⠀⠀⠀⠀⠑⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠊⠁⠀⠀⠀⠀⠏⠀⠀⢸⣿⣿⣻⣾⢿⣿⢸⣿⡇
⢸⣿⡇⢹⣿⣟⣿⣽⡿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⣽⣿⣻⡟⢸⣿⡇
⠀⣿⣷⢸⣿⣻⣯⣿⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡿⣿⣽⡿⡇⣾⣿⠀
⠀⢹⣿⡆⣿⣿⣽⣿⣻⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⢿⣿⣽⣿⢰⣿⡏⠀
⠀⠀⢿⣿⡼⣿⣾⢿⣽⣟⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡿⣟⣿⣾⢧⣿⡿⠀⠀
⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀
⠀⠀⠀⠈⢿⣿⢯⣷⣿⣯⣿⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⢾⣯⣿⢿⡽⠃⠀⠀⠀
⠀⠀⠀⠀⠀⢿⣿⣟⣷⡿⣯⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⢾⣿⣻⣽⠟⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⢻⣯⣿⣟⣯⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣟⣾⣿⣻⡟⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣿⣻⣷⣯⠛⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠾⠛⣽⣿⣯⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢽⣷⣄⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⣠⣾⡿⠗⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠓⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠚⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                             
                                           Sofy_32 Script\n\n"
    printf ' %s [%s%s %s%s %s]%s\n\n' "${CRE}" "${CNC}" "${CYE}" "${text}" "${CNC}" "${CRE}" "${CNC}"
    sleep 2
}

logo "Welcome"
printf '%sThis script will install needed dependencies and copy my dotfiles to your bspwm setup.%s\n'"${CRE}" "${CNC}"
sleep 5

while true; do
	read -rp " Do you wish to continue? [y/N]: " yn
		case $yn in
			[Yy]* ) break;;
			[Nn]* ) exit;;
			* ) printf " Error: just write 'y' or 'n'\n\n";;
		esac
    done
			clear
			
logo "Installing needed packages.."

dependencias=(bspwm polybar sxhkd dunst rofi git mpd picom)

printf "%s%sChecking for required packages...%s\n" "${BLD}" "${CBL}" "${CNC}"
for paquete in "${dependencias[@]}"
do
  if ! is_installed $paquete; then
    sudo pacman -S $paquete --noconfirm
    printf "\n"
  else
    printf '%s%s is already installed on your system!%s\n' "${CGR}" "$paquete" "${CNC}"
    sleep 1
  fi
done
sleep 2
clear

logo "Copying Dotfiles.."
printf "Copying files to respective directories..\n"

if [ ! -d $HOME/.config ]; then
	mkdir -p $HOME/.config
	cp -r $HOME/dotfiles/config/* $HOME/.config
else
	cp -r $HOME/dotfiles/config/* $HOME/.config
fi

if [ ! -d $HOME/.local/bin ]; then
	mkdir -p $HOME/.local/bin
	cp -r $HOME/dotfiles/misc/bin/* $HOME/.local/bin
else
	cp -r $HOME/dotfiles/misc/bin/* $HOME/.local/bin
fi

if [ ! -d $HOME/.local/share/applications ]; then
	mkdir -p $HOME/.local/share/applications
	cp -r $HOME/dotfiles/misc/applications/* $HOME/.local/share/applications
else
	cp -r $HOME/dotfiles/misc/applications/* $HOME/.local/share/applications
fi

if [ ! -d $HOME/.local/share/asciiart ]; then
	mkdir -p $HOME/.local/share/asciiart
	cp -r $HOME/dotfiles/misc/asciiart/* $HOME/.local/share/asciiart
else
	cp -r $HOME/dotfiles/misc/asciiart/* $HOME/.local/share/asciiart
fi

if [ ! -d $HOME/.local/share/fonts ]; then
	mkdir -p $HOME/.local/share/fonts
	cp -r $HOME/dotfiles/misc/fonts/* $HOME/.local/share/fonts
else
	cp -r $HOME/dotfiles/misc/fonts/* $HOME/.local/share/fonts
fi

printf "%s%sFiles copied succesfully!!%s\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2
clear

logo "Reloading fonts.."
fc-cache -rv >/dev/null 2>&1
printf "%s%sFonts reloaded succesfully!%s\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2
clear

logo "Enabling MPD service"
systemctl --user enable mpd.service
systemctl --user start mpd.service
printf "%s%sDone!!%s\n" "${BLD}" "${CGR}" "${CNC}"
sleep 2
clear

logo "Installation finished"
printf "%s%sNow logout your session, select bspwm and log in.%s\n\n"
