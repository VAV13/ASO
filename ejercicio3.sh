#!/bin/bash
ct=0
while	read linea;do
	let ct=ct+1
	echo $ct $linea
	echo "......"
done <	/etc/group
