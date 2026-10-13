#!/bin/bash

count=0

for file in *; do
	if [[ "$file" == *.mph ]]; then
		((count++))
	fi
done	

echo "COMSOL models found: $count"
