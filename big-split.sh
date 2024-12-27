#!/bin/bash

# Get the current terminal dimensions
TERMINAL_WIDTH=$(tmux display-message -p "#{window_width}")
TERMINAL_HEIGHT=$(tmux display-message -p "#{window_height}")

# Calculate the desired pane size
PERCENTAGE=70  # Desired percentage for the first pane
OFFSET=10      # Additional column offset
PANE_WIDTH=$((TERMINAL_WIDTH * PERCENTAGE / 100 + OFFSET))

# Split the window
tmux split-window -h -l "$PANE_WIDTH"
