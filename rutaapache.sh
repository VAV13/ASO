#!/bin/bash
#Author: Víctor Arribas Villa
#Description: Cambio de ruta de apache
#Date:08/01/2019
#Weather: Hoy el grajo debe ir andando
########################################################

fichero="index"
extension=".html"
ruta="var/www/html/"
mi_archivo=$ruta$fichero$extension

echo $mi_archivo
cat $mi_archivo
