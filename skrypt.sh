#!/bin/bash 
case "$1" in
	--data) echo "dzisiejsza data to: $(date)";;
	--logs) for (( c=1; c<=100; c++))
					do 
						echo "log$c.txt, $0, $(date)" > log$c.txt
					done
			
			;;
esac
