#!/bin/bash

read -p "Choose an action (batch/gui/check): " action

case "$action" in
	batch)
		echo "Running simulations without GUI..."
		;;
	gui)
		echo "Opening COMSOL GUI..."
		;;
	check)
		echo "Checking model files..."
		;;
	*)
		echo "Invalid mode entered!"

esac
