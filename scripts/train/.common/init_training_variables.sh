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
