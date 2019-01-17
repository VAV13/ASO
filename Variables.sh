#!/bin/bash
###################################333
#Víctor Arribas
#Ejercicio variables
#15/01/19
#############################################

read -sp "Introduzca la contraseña " pass
read -sp "Repita la contraseña " pass2

if [ $pass = $pass2 ]; then
	echo "La contraseña es $pass"
else
	echo "Contraseñas erroneas"

fi
