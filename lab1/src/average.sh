#!/bin/bash

count=$#

sum=0

for arg in "$@";
do
	sum=$(echo "$sum + $arg" | bc)
done

average=$(echo "scale=2; $sum / $count" | bc)

echo "Количество аргументв: $count"
echo "Среднее арифметическое: $average"
