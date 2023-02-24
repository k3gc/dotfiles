#!/bin/bash

function install_dotfiles(){
	clear
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

                                            By sofi_32\n\n"
		sleep 2
	}

	miku_logo
	echo -e "\e[1;32m bienvenido"
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
	dependencias=(dunst rofi cmatrix polybar lxappearance pcmanfm nitrogen engrampa ranger cmus arandr)

	echo -e "\e[1;32m Comprobando los paquetes nacesarios" 
	for paquete in "${dependencias[@]}"
	do
	  if ! is_installed $paquete; then
	    sudo pacman -S $paquete --noconfirm
	    printf "\n"
	  else
	    echo -e "\e[1;32m $paquete ya está instalado en su sistema"
	    sleep 1
	  fi
	done
	
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
	else
		cp -r misc/fonts/* $HOME/.local/share/fonts/
	fi
	sleep 5
	clear

	miku_logo
	echo -en "\e[1;32m dotfiles copiados con exito\n"
	echo -n -e "\e[1;37m"
}

function install_papirus_icon(){
	wget -qO- https://git.io/papirus-icon-theme-install | sh
	
}

function install_aplications(){
	echo "hello world"
}


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

clear
title
echo -e "\e[1;36m  selecciona una opción:"
echo " "
echo -e "\e[1;36m  {1} -> \e[1;37mInstalar Miku-theme"
echo -e "\e[1;36m  {2} -> \e[1;37mInstalar papirus-icon-theme"
echo -e "\e[1;36m  {3} -> \e[1;37mInstalar aplicaciones"
echo -e "\e[1;36m  {4} -> \e[1;37mSalir"
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
	exit
fi

