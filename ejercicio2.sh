#!/bin/bash
##########################################
#Víctor Arribas Villa
#17/01/19
#
##########################################

crear_fichero(){

	if [ -z $2 ];then
		orden="user"
	else
		orden=$2
	fi

	echo $orden
	read pause

	echo "<html>" >$fichero
	echo "<body">>$fichero
	echo "<pre>">>$fichero

	ps -eo user,pid,cmd --sort $orden >>$fichero

	echo "</pre>">>$fichero
	echo "</body>">>$fichero
	echo "</html>">>$fichero

		echo "¿Desea verificar que lo ha creado?"
		read respuesta
		if [ $respuesta = "s" ]; then
			comprobar
		fi

}

comprobar(){

	cat $fichero

}

if [ -z $1 ];then

	echo "Usage :$0 nombrefichero.html [user|pid|cmd]"
	read pause
else
	if [ -z $2 ];then
		orden="user"
	else
		case $2 in
		user|pid|cmd)
			orden=$2
			;;
		*) echo "error de parametro ordenacion"
			exit
			;;
		esac
	fi
	echo $orden
	read pause

	fichero=$1
	if [ -e $fichero ];then
		echo "Fichero $fichero existe desea reescribirlo s/n"
		read respuesta
		if [ $respuesta = "s" ];then
			crear_fichero
		else
			echo "no quieres crear nada"
			exit
		fi
	else
		echo "no exite y lo creo"
		crear_fichero
	fi
fi

