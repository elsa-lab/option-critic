#!/bin/bash

# Kill the Tmux session
tmux kill-ses -t "$TMUX_SESSION_NAME" 2>/dev/null || true
