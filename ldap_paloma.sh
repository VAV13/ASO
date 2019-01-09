#!/bin/bash
#Author: Víctor Arribas Villa
#Description: Acceso al servidore ldap de Paloma
#Date:8/1/2019
#Weather: Hoy hace un frio de cojones
###########################################
host=192.168.86.157
base="dc=paloma,dc=es"
ldapsearch -x -H ldap://$host -b $base
