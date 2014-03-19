#!/bin/bash

while read line
do
	parts=($line)
	F=${parts[0]}
	B=${parts[1]}
	X=${parts[2]}
	i=1
	while [ $i -le $X ]; do
		if [ $(($i % $F)) = 0 -a $(($i % $B)) = 0 ]; then
			echo -n FB
		elif [ $(($i % $F)) = 0 ]; then
			echo -n F
		elif [ $(($i % $B)) = 0 ]; then
			echo -n B
		else
			echo -n $i
		fi
		if [ $i = $X ]; then
			echo
		else
			echo -n " "
		fi
		let i=i+1
	done
done < $1

