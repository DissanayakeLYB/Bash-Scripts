#!/bin/bash

SESSION=$1

if [ -z "$1" ]; then
	echo "Input the session name to search, as an argument"
	exit 0
fi

if tmux has-session -t "$SESSION" 2>/dev/null; then
	echo "Session '$SESSION' is running."
else 
	echo "Session '$SESSION' is not running."
fi
