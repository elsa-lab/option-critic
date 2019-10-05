#!/bin/bash

# Kill the Tmux session
tmux kill-ses -t "$TMUX_SESSION_NAME" 2>/dev/null || true

# Remove the log directory
rm -rf "$LOG_DIR"

# Remove the model directory
rm -rf "$MODEL_DIR"
