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
esac
