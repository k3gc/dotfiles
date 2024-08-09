#!/bin/bash

function title() {
	echo -e "\e[1;32m
	   ____         __       ____
	  /  _/__  ___ / /____ _/ / /
	 _/ // _ \(_-</ __/ _  / / /
	/___/_//_/___/\__/\_,_/_/_/
	"
	echo -e "\e[1;35m				By k3gc"
	echo " "
}

miku_logo () {
		echo -en "\e[1;36m
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
                                            By sofy_32\n\n"
		sleep 2
}


function install_dotfiles(){

	distro="fedora"

	clear
	title
	echo -e "\e[1;36m  selecciona tu distribucion:"
	echo " "
	echo -e "\e[1;36m  {1} -> \e[1;37mKali"
	echo -e "\e[1;36m  {2} -> \e[1;37mFedora"
	echo -e "\e[1;36m  {3} -> \e[1;37mArch"
	echo -e "\e[1;36m  {4} -> \e[1;37mSalir"
	echo " "
	echo -n -e "\e[1;36m  > "
	echo -n -e "\e[1;37m"
	read option

	if [ $option == 1 ]; then
		distro="kali"
	fi
	if [ $option == 2 ]; then
		distro="fedora"
	fi
	if [ $option == 3 ]; then
		distro="arch"
	fi
	if [ $option == 4 ]; then
		exit
	fi
	
	clear
	miku_logo
	echo -e "\e[1;32m Bienvenid@" $USER
	echo -e "\e[1;32m Este script instalará las dependencias necesarias y copiará mis dotfiles a su configuración de bspwm."
	sleep 5

	while true; do
		read -rp " Desea continuar? [y/N]: " yn
			case $yn in
				[Yy]* ) break;;
				[Nn]* ) exit;;
				* ) printf " Error: solo escribe 'y' o 'n'\n\n";;
			esac
    	done
				clear

	miku_logo
	echo -e "\e[1;32m Instalando Dependencias..."
	sleep 2
	#dependencias=(polybar dunst rofi engrampa zsh cmatrix pcmanfm lxappearance nitrogen ranger cmus arandr light i3lock blueman xsetroot feh htop git pavucontrol hexyl)
	dependencias=(kitty picom bspwm sxhkd polybar dunst rofi engrampa zsh cmatrix pcmanfm lxappearance nitrogen ranger cmus arandr light i3lock blueman xsetroot feh htop git pavucontrol hexyl zsh-syntax-highlighting zsh-autosuggestions)

	if [ $distro == "kali" ]; then
		is_installed() {
    		dpkg-query -W -f='${Status}' $1 >/dev/null 2>&1
    		return $?
		}
	fi

	if [ $distro == "fedora" ]; then
		is_installed() {
	    	dnf list installed $1 >/dev/null 2>&1
        	return $?
		}
	fi

	if [ $distro == "arch" ]; then
		is_installed() {
	    	pacman -Qi $1 &> /dev/null
        	return $?
		}
	fi

	echo -e "\e[1;32m Comprobando los paquetes nacesarios" 
	for paquete in "${dependencias[@]}"
	do
	  if ! is_installed $paquete; then

	  	if [ $distro == "kali" ]; then
			sudo apt install $paquete -y
		fi
		if [ $distro == "fedora" ]; then
			sudo dnf install $paquete -y
		fi
		if [ $distro == "arch" ]; then
			sudo pacman -S $paquete --noconfirm
		fi

	    printf "\n"
	  else
	    echo -e "\e[1;32m $paquete ya está instalado en su sistema"
	    sleep 1
	  fi
	done
	
	sleep 5
	clear

	miku_logo
	echo -e "\e[1;32m Asignando permisos de ejecucion"

	chmod +x config/bspwm/bspwmrc
	chmod +x config/bspwm/scripts/*.sh
	chmod +x config/dunst/dunstrc
	chmod +x config/bspwm/miku/polybar/launch.sh
	chmod +x config/ranger/scope.sh
	chmod +x config/rofi/scripts/*.sh
	chmod +x config/sxhkd/sxhkdrc
	chmod +x home/.*

	sleep 5
	clear

    miku_logo
    echo -e "\e[1;32m Creando una copia de tu configuracion.."

    if [ ! -d $HOME/.ThemeBakup ]; then
		mkdir -p $HOME/.ThemeBakup
	fi

    [ -d ~/.config/bspwm ] && mv ~/.config/bspwm ~/.ThemeBakup/bspwm-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/kitty ] && mv ~/.config/kitty ~/.ThemeBakup/kitty-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/nitrogen ] && mv ~/.config/nitrogen ~/.ThemeBakup/nitrogen-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/cmus ] && mv ~/.config/cmus ~/.ThemeBakup/cmus-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/neofetch ] && mv ~/.config/neofetch ~/.ThemeBakup/neofetch-backup-"$(date +%Y.%m.%d-%H.%M.%S)"   
    [ -d ~/.config/picom ] && mv ~/.config/picom ~/.ThemeBakup/picom-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/rofi ] && mv ~/.config/rofi ~/.ThemeBakup/rofi-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/sxhkd ] && mv ~/.config/sxhkd ~/.ThemeBakup/sxhkd-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/dunst ] && mv ~/.config/dunst ~/.ThemeBakup/dunst-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/polybar ] && mv ~/.config/polybar ~/.ThemeBakup/polybar-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/ranger ] && mv ~/.config/ranger ~/.ThemeBakup/ranger-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -d ~/.config/zsh ] && mv ~/.config/zsh ~/.ThemeBakup/zsh-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    [ -f ~/.zshrc ] && mv ~/.zshrc ~/.ThemeBakup/.zshrc-backup-"$(date +%Y.%m.%d-%H.%M.%S)"
    
    echo -e "\e[1;32m listo!"
    sleep 5
	clear

	miku_logo
	echo -e "\e[1;32m copiando dotfiles.."


	if [ ! -d $HOME/.config ]; then
		mkdir -p $HOME/.config
		cp -r config/* $HOME/.config/
	else
		cp -r config/* $HOME/.config/
	fi


	if [ ! -d $HOME/.local/share/fonts ]; then
		mkdir -p $HOME/.local/share/fonts
		cp -r misc/fonts/* $HOME/.local/share/fonts/
		cp -r home/.* $HOME/
	else
		cp -r misc/fonts/* $HOME/.local/share/fonts/
		cp -r home/.* $HOME/
	fi

	if [ ! -d $HOME/.themes ]; then
		mkdir -p $HOME/.themes
		#cp -r misc/themes/* $HOME/.themes/
		tar -xf misc/themes/CyberHack-master.tar.gz -C $HOME/.themes/
	else
		#cp -r misc/themes/* $HOME/.themes/
		tar -xf misc/themes/CyberHack-master.tar.gz -C $HOME/.themes/
	fi

	if [ ! -d $HOME/.icons ]; then
		mkdir -p $HOME/.icons
		#cp -r misc/cursor/* $HOME/.icons/
		tar -xf misc/cursor/Sanae.tar.gz -C $HOME/.icons/
	else
		#cp -r misc/cursor/* $HOME/.icons/
		tar -xf misc/cursor/Sanae.tar.gz -C $HOME/.icons/
	fi

	sleep 5
	clear
	
	#chsh -s /usr/bin/zsh

	miku_logo
	echo -en "\e[1;32m dotfiles copiados con exito\n"
	echo -n -e "\e[1;37m"

	sleep 5
	clear

	miku_logo
	echo -e "\e[1;32m Instalando ohmyzsh"
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

}

function install_papirus_icon(){
	wget -qO- https://git.io/papirus-icon-theme-install | sh
	
}

function install_aplications(){

	applications=(gimp krita deadbeef simplescreenrecorder shotcut vlc qimgv)

	is_installed() {
	    dnf list installed $1 >/dev/null 2>&1 ;
        return $?
	}

	echo -e "\e[1;32m Comprobando los paquetes nacesarios" 
	for paquete in "${applications[@]}"
	do
	  if ! is_installed $paquete; then
	    sudo dnf install $paquete -y
	    printf "\n"
	  else
	    echo -e "\e[1;32m $paquete ya está instalado en su sistema"
	    sleep 1
	  fi
	done
}


clear
title
echo -e "\e[1;36m  selecciona una opción:"
echo " "
echo -e "\e[1;36m  {1} -> \e[1;37mInstalar rice-miku"
echo -e "\e[1;36m  {2} -> \e[1;37mInstalar papirus-icon-theme"
echo -e "\e[1;36m  {3} -> \e[1;37mInstalar aplicaciones"
echo -e "\e[1;36m  {4} -> \e[1;37mInstalar pico-sdk"
echo -e "\e[1;36m  {5} -> \e[1;37mSalir"
echo " "
echo -n -e "\e[1;36m  > "
echo -n -e "\e[1;37m"
read option

clear


if [ $option == 1 ]; then
	install_dotfiles
fi
if [ $option == 2 ]; then
	install_papirus_icon
fi
if [ $option == 3 ]; then
	install_aplications
fi
if [ $option == 4 ]; then
	install_pico_sdk
fi
if [ $option == 5 ]; then
	exit
fi
