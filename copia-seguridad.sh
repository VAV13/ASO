#!/bin/bash
######################################
#Victor Arribas
#Copias de seguridad
#15/01/19
######################################
user=$(whoami)

input=/home/$user

output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files {

	find $1 -type f | wc -l

}


function total_directories {

	find $1 -type d |wc -l

}

function total_archived_directories {

	tar -tzf $1 | grep /$ | wc -l

}

function total_archived_files {

	tar -tzf $1 | grep -v /$ | wc -l

}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )

src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )
clear 
echo "Archivos a incluir: $src_files"
echo "Directorios a incluir: $src_directories"
echo "Ficheros archivados: $arch_files"
echo "Directorios archivado: $arch_directories"

if [ $src_files -eq $arch_files ]; then
	
	echo "Copia de seguridad de $input completada"
	echo "Detalles sobre la copia de seguridad"
	ls -l $output
else
	echo "La copia de seguridad de $input ha fallado"
fi
