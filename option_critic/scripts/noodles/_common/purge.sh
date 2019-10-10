#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

################################################################################
# Initialization
################################################################################

# Set the common variables
source "option_critic/scripts/_common/set_common_variables.sh"

################################################################################
# Set Names
################################################################################

# Replace "/" with "." in the sub-path
NAME=${SPEC_PATH////.}

# Set the Tmux session name ("." are replaced with "," in the sub-path)
TMUX_SESSION_NAME_TO_KILL="noodles/$CONDA_ENV_NAME/${SPEC_PATH//./,}/run"

# Set the Tmux session name ("." are replaced with "," in the sub-path)
TMUX_SESSION_NAME_TO_RUN="noodles/$CONDA_ENV_NAME/${SPEC_PATH//./,}/$NOODLES_ACTION"

################################################################################
# Set Paths
################################################################################

# Set the STDOUT path for noodles logging
LOG_STDOUT_PATH="$ROOT_LOGS_DIR/noodles/$NAME.$NOODLES_ACTION.stdout.log"

# Set the STDERR path for noodles logging
LOG_STDERR_PATH="$ROOT_LOGS_DIR/noodles/$NAME.$NOODLES_ACTION.stderr.log"

################################################################################
# Start Purging
################################################################################

# Kill the running session
tmux kill-ses -t "$TMUX_SESSION_NAME_TO_KILL" || true

# Run Noodles in a detached Tmux session
tmux new -d -s "$TMUX_SESSION_NAME_TO_RUN" "noodles purge $SPEC_PATH > $LOG_STDOUT_PATH 2> $LOG_STDERR_PATH"
