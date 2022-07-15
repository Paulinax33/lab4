#!/bin/bash 
case "$1" in
	--data) echo "dzisiejsza data to: $(date)";;
	--logs) if [ "$2" == "30" ]
				then
				for (( c=1; c<=$2; c++))
					do 
						echo "log$c.txt, $0, $(date)" > log$c.txt
					done
			elif [ "$1" == "--logs" ]
				then 
				for (( c=1; c<=100; c++))
					do 
						echo "log$c.txt, $0, $(date)" > log$c.txt
					done
			fi
			;;
	--help) echo "Dostepne opcje:"
			echo
			echo "--data - wyswietlenie daty"
			echo "--logs - utworzenie plikow"
			echo "--logs 30 - utworzenie 30 plikow"
			echo "--help - wyswietlenie wszystkich dostepnych opcji"
esac
