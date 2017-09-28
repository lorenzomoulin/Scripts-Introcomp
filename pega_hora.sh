#!/bin/bash

while [ true ] ;
do 
	date | cut -d " " -f 4 >hora
	hora=$(cut -d ':' -f 1 hora)$(cut -d ':' -f 2 hora)$(cut -d ':' -f 3 hora)
	hora_prova='194900'
	echo $hora e $hora_prova
	if [ "$hora" -ge "$hora_prova" ] ; then
		echo Começou > log
		break
	fi
done
