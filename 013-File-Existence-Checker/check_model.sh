#!/bin/bash

filename=$1

if [ -f "$file" ]; then
	echo "Model found!"
else
	echo "Model not found!"
fi
