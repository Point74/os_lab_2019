#!/bin/bash

count=150

for((i=0; i<count; i++))
do
	random=$(od -An -N1 -tu1 /dev/random | tr -d ' ')
	echo $random >> numbers.txt
done
