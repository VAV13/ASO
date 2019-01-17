#!/bin/bash

if [ -z $1 ];then

	echo "Salao, si no me dices que quieres que busque no avanzamos"
	exit;

else
	if [ -f $1 ];then
		ct=0
		while	read linea;do
			let ct=ct+1
			echo $ct $linea
			echo "......"
		done <	$1

	else

		echo "Pero que quieres que te mire quillo, si no has seleccionado ningún fichero"

fi
fi
