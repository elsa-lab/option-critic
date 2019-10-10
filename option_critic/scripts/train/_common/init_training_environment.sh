#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Initialize conda
source "option_critic/scripts/_common/init_conda.sh"

# Activate the conda environment
conda activate "$CONDA_ENV_NAME"

# Get an available CUDA device ID
CUDA_DEVICE_ID=$(python option_critic/scripts/train/_common/get_available_cuda_device.py)

# Set the CUDA visible devices
export CUDA_VISIBLE_DEVICES="$CUDA_DEVICE_ID"

# Set the Theano flags
export THEANO_FLAGS="contexts=dev0->cuda0,floatX=float32,device=cuda0"

# Make sure the log directory exists
mkdir -p "$LOG_DIR"

# Make sure the model directory exists
mkdir -p "$MODEL_DIR"
