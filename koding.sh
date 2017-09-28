#!/bin/bash

set -e
a="x"
b="o"
c=" "

easy_task() {
	if [ $(($1 % 2)) -eq 0 ]; then
		echo "tidak boleh genap"
	else
		i=0
		mid=$(($1 / 2))
		while [ $i -lt $(($mid+1)) ]; do
			j=0
			while [ $j -lt $1 ]; do
				if [ $((i + mid)) -eq $j ]; then
					printf "%s" "$a"
				elif [ $((mid - i)) -eq $j ]; then
					printf "%s" "$a"
				else
					printf "%s" "$c"
				fi
				let j+=1
			done
			echo $c
			let i+=1
		done
		while [ $i -lt $1 ]; do
			j=0
			while [ $j -lt $1 ]; do
				if [ $((($1 - (i+1)) + mid)) -eq $j ]; then
					printf "%s" "$a"
				elif [ $((mid - ($1 - (i+1)))) -eq $j ]; then
					printf "%s" "$a"
				else
					printf "%s" "$c"
				fi
				let j+=1

			done
			echo $c
			let i+=1
		done
	fi
}

easy_task $1
