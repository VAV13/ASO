#!/bin/bash
#########################################
#Autor:Víctor Arribas Villa
#Descriptción: Menú procesos, usuarios....
#14/01/19
#########################################
show_menu(){
	clear
	echo "menu"
	echo "1.- Procesos"
	echo "2.- Usuarios"
	echo "3.- Grupos"
	echo "4.- Paquetes instalados"
	echo "5.- Finalizar"
}

read_option(){
	read -p "Seleccione una opción [1-5]" opcion case $opcion in
		1) procesos;;
		2) usuarios;;
		3) grupos;;
		4) paquetes;;
		5) exit;;
		*) echo "PULSE OTRO VALOR"
		sleep 2;;
	esac
}


procesos(){
		ps -ax|more
		read -p "Pulse una tecla para continuar" pausa
}

usuarios(){
		cat /etc/passwd|cut -f l -d :|sort
		read -p "Pulse una tecla para continuar" pausa
}

grupos(){
		cat /etc/group|cut -f l -d :|sort pause

}

paquetes(){
		dpkg -l
		pause
}

pause(){
		read -p "Pulse una tecla para continuar" p
}

##########################################################
#
#		MAIN PROGRAM
#
##########################################################

while true; do
	show_manu
	read_option
done
