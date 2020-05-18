#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -eo pipefail

################################################################################
# Check the environment variables for training
################################################################################

# needs to provide the NAME of training
if [ -z "${NAME}" ]; then
  echo "NAME needs to be a string."
  exit 1
fi

# needs to provide the ID of training env
if [ -z "${ENV_ID}" ]; then
  echo "ENV_ID needs to be a string."
  exit 1
fi

# needs to provide the duration of training
if ! [[ "${EPOCHS}" =~ ^[0-9]+$ ]]; then
  echo "EPOCHS needs to be an integer."
  echo "Number of training epoch is set to 250k."
  exit 1
fi 

# default using seed 1000 for traning
if [ -z "${SEED}" ]; then
  export SEED=1000
  echo "Random seed is set to 1000."
elif ! [[ "${SEED}" =~ ^[0-9]+$ ]]; then
  echo "SEED needs to be an integer."
  exit 1
fi 

# default using 8 options for traning
if [ -z "${NUM_OPTIONS}" ]; then
  export NUM_OPTIONS=8
  echo "Number of options to create is set to 8."
elif ! [[ "${NUM_OPTIONS}" =~ ^[0-9]+$ ]]; then
  echo "NUM_OPTIONS needs to be an integer."
  exit 1
fi 

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
# Start Training
################################################################################

# 1. Run training
# 2. Zip the experimental results
python option_critic/train_q.py \
  --rom=$ENV_ID \
  --epochs=$EPOCHS \
  --num-options=$NUM_OPTIONS \
  --seed=$SEED \
  --folder-name=$MODEL_DIR \
> >(tee "$LOG_STDOUT_PATH") \
2> >(tee "$LOG_STDERR_PATH" >&2) && \
rm -f "$ZIP_PATH" && \
zip -r "$ZIP_PATH" "$LOG_DIR" "$MODEL_DIR"

