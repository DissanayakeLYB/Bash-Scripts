#!/bin/bash

file=$1

if [ -f "$file" ]; then
	grep -i -q "ERROR" "$file" 2>/dev/null && echo "Simulation has errors" || echo "Simulation looks good"
else
	echo "Log file was not found."
fi

# -q means --quiet or --silent. This does not print the line. 
# -i means do not consider the case of the checking text. Could be 'error', 'Error', 'ErRoR' and so.
# 2>/dev/null prevents from printing any error message.
