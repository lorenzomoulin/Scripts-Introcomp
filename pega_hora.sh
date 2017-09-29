#!/bin/bash
#posso mudar para passar a hora de inicio como argumento e o número de provas
hora_prova='090000'
numero_prova='1'
hora_final='190000'
numero_de_provas='10'

while [ true ] ;
do 
	date | cut -d " " -f 4 >hora
	hora=$(cut -d ':' -f 1 hora)$(cut -d ':' -f 2 hora)$(cut -d ':' -f 3 hora)
	
	
	if [ "$hora" -ge "$hora_prova" ] ; then
		
		if [ "$numero_prova" -gt "$numero_de_provas" ]; then
			echo "---- daqui a 1 hora o site fecha"
			break
			
		fi
		echo "Começou a prova numero $numero_prova"> log_$numero_prova
		
		hora_prova=`expr $hora_prova + 010000`
		numero_prova=`expr $numero_prova + 1`
		
	fi
	
done

if [ "$hora" -ge "$hora_final" ]; then
	echo "Acabou!!!!!"			
	break
fi
