#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Kill the Tmux session
tmux kill-ses -t "$TMUX_SESSION_NAME" 2>/dev/null || true

# Remove the log directory
rm -rf "$LOG_DIR"

# Remove the model directory
rm -rf "$MODEL_DIR"

# Remove the zip file
rm -rf "$ZIP_PATH"
