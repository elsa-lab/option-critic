#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

################################################################################
# Initialize
################################################################################

# Set the common variables
source "option_critic/scripts/_common/set_common_variables.sh"

# Initialize the training variables
source "option_critic/scripts/train/_common/init_training_variables.sh"

# Initialize the training environment
source "option_critic/scripts/train/_common/init_training_environment.sh"

################################################################################
# Set Fixed Training Arguments
################################################################################

# Set the number of epochs
export EPOCHS=400

# Set the number of options
export NUM_OPTIONS=8

################################################################################
# Start Training
################################################################################

# 1. Run training
# 2. Zip the experimental results
python option_critic/train_q.py \
  --rom=$ENV_ID \
  --epochs=$EPOCHS \
  --num-options=$NUM_OPTIONS \
  --seed=$SEED \
  --reduce_action_space=true \
  --folder-name=$MODEL_DIR \
> >(tee "$LOG_STDOUT_PATH") \
2> >(tee "$LOG_STDERR_PATH" >&2) && \
rm -f "$ZIP_PATH" && \
zip -r "$ZIP_PATH" "$LOG_DIR" "$MODEL_DIR"

