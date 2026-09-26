#!/bin/bash

count=$1

while [ $count -ge 1 ]
do
	echo "$count"
	sleep 1
	((count--))
done

echo "Simulation started!!!"
