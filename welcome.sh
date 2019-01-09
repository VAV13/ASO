#!/bin/bash

greeting="Bienvenido"

user=$(whoami)

day=$(date +%A)

echo "$greeting de nuevo $user. Hoy es $day, ¡el mejor día de la semana!"
echo "Tu versión de bash es: $BASH_VERSION. ¡Diviertete!"
