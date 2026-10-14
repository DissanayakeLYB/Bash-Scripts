#!/bin/bash

for file in model*; do
	if [ ! -e "$file" ]; then
		continue
	fi

	echo "File found: $file"

done
