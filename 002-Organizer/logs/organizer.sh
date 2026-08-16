#!/bin/bash/

directory=$1

if [ -z "$directory" ]; then
	echo "Please provide a directory"
	exit 1
fi

if [ ! -d "$directory" ]; then
	echo "Directory does not exist"
	exit 1
fi

mkdir -p "$directory/logs"
mkdir -p "$directory/outputs"
mkdir -p "$directory/errors"
mkdir -p "$directory/other"

for file in "$directory"/*; do

	if [ -f "$file" ]; then
		echo "Found a file: $file"

		extension="${file##*.}"

	
		if [ "$extension" = "log" ]; then
			destination="$directory/logs"

		elif [ "$extension" = "out" ]; then
			destination="$directory/logs"

		elif [ "$extension" = "err" ]; then
			destination="$directory/errors"

		else
			destination="$directory/logs"
		fi

		echo "Moving $file -> $destination/"

		mv "$file" "$destination/"

	fi
done



