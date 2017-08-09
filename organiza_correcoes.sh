#!/bin/bash

#pega o ano atual e cria um diretorio com o ano atual
ano=$(date +'%Y')
mkdir $ano
cp "$1" $ano; cd $ano

#blabla
while IFS='' read -r line || [[ -n "$line" ]]; do

	echo "$line"
	mkdir "$line" ; cd "$line"
	
	#for para criar os workings
	for i in {1..8} ; do
	
		mkdir "Working $i"; cd "Working $i"

		if [ $i -eq 1 ] || [ $i -eq 6 ] || [ $i -eq 7 ] || [ $i -eq 8 ] ; then
			for j in {1..3}; do 
				mkdir "Praticando $j"
		done
			mkdir "Desafio"
			

		elif [ $i -eq 3 ] || [ $i -eq 4 ] || [ $i -eq 5 ] ; then
			for k in {1..5}; do
				mkdir "Praticando $k"			
		done  

			for l in {1..2}; do
				mkdir "Desafio $l"
			done

		else 
			for m in {1..6}; do
				mkdir "Praticando $m"		
			done
 
			for n in {1..3}; do 
				mkdir "Desafio $n"
			done 
		fi
		cd ..
	done
	cd ..

done < "$1"
	



