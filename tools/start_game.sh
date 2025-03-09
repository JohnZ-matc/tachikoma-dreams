#!/bin/bash

# Start a new tmux session
tmux new-session -d -s tachikoma

# Split into two horizontal panes
tmux split-window -h
tmux select-pane -t 0
tmux split-window -v

# Run the game in the top-left pane
tmux select-pane -t 0
tmux send-keys "./tachikomaDreams" C-m

# Open ranger in the bottom-left pane
tmux select-pane -t 2
tmux send-keys "ranger --cmd='cd ~/game_inventory'" C-m  # Adjust path as needed

# Open a hacking terminal in the right pane
tmux select-pane -t 1
tmux send-keys "htop" C-m  

# Attach to tmux session
tmux attach-session -t tachikoma

