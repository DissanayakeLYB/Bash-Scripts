#!/bin/bash

file=$1

if [ -e "${file}" ]; then

	if [ -s "${file}" ]; then
		echo "Log file contains data."
	else
		echo "Log file is empty."
	fi

else 
	echo "Log file not found."

fi
