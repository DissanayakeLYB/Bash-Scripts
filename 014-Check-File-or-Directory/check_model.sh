#!/bin/bash

file="$1"
ext="${file##*.}"

if [ -n "$file" ]; then
	if [ "$ext" != "mph" ] || [ "$file" == "." ] || [ "$file" == ".." ]; then
		echo "The file you are searching for is not a COMSOL model."
	else
		if [ -e "$file" ]; then
			echo "Model found: $file"
		else
			echo "Model not found: $file"
		fi
	fi
else
	echo "Enter a file/directory name to check."
fi
