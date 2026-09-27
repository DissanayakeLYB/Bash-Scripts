#!/bin/bash

log_message () {
	echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" 
}

log_message "Simulation started."
sleep 1
log_message "Mesh generation complete."
sleep 4
log_message "Simulation finished."
