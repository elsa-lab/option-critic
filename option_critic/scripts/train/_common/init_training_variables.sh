#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Set the sub-dir
SUB_DIR="$NAME/env_id-$ENV_ID/seed-$SEED"

# Set the Tmux session name ("." are replaced with "," in the sub-dir)
export TMUX_SESSION_NAME="train/$CONDA_ENV_NAME/${SUB_DIR//./,}"

# Set the log directory
export LOG_DIR="$ROOT_LOGS_DIR/train/$SUB_DIR"

# Set the log path for STDOUT
export LOG_STDOUT_PATH="$LOG_DIR/stdout.log"

# Set the log path for STDERR
export LOG_STDERR_PATH="$LOG_DIR/stderr.log"

# Set the model directory
export MODEL_DIR="$ROOT_MODELS_DIR/$SUB_DIR"

# Set the zip path ("/" are replaced with "." in the sub-dir)
export ZIP_PATH="$ROOT_ZIPS_DIR/${SUB_DIR////.}.zip"

# Print the Tmux session name
echo "\$TMUX_SESSION_NAME=$TMUX_SESSION_NAME"

# Print the log path for STDOUT
echo "\$LOG_STDOUT_PATH=$LOG_STDOUT_PATH"

# Print the log path for STDERR
echo "\$LOG_STDERR_PATH=$LOG_STDERR_PATH"

# Print the model directory
echo "\$MODEL_DIR=$MODEL_DIR"

# Print the zip path
echo "\$ZIP_PATH=$ZIP_PATH"
