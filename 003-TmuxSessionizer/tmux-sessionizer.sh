#!/bin/bash

# Define the session name
SESSION="dojo"

# Check if the session already exists
if tmux has-session -t $SESSION ; then
	echo "Session $SESSION already exists. Attaching..."
	tmux attach-session -t $SESSION
	exit 0
fi

# Create the session in the background 
tmux new-session -d -s $SESSION -n "Code"

# Split the first window horizontally(-h), vertically(-v)
# tmux split-window -h -t $SESSION:0
# tmux split-window -v -t $SESSION:0.1

# Create a brand new window (Tab) named "Logs"
tmux new-window -t $SESSION -n "Logs"

# Send a command to Window 0, Pane 0 (top left)
tmux send-keys -t $SESSION:0 "cd ~/Github && ls" C-m
tmux send-keys -t $SESSION:1 "cd ~/Github && ls" C-m
tmux send-keys -t $SESSION:0 "cd " 
tmux send-keys -t $SESSION:1 "cd " 

# Always select your starting pane and window
tmux select-window -t $SESSION:0
# tmux select-pane -t $SESSION:0.0

# Attach to the configured session
tmux attach-session -t $SESSION


