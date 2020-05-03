#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Get an available CUDA device ID
export CUDA_DEVICE_ID=$(python option_critic/scripts/train/_common/get_available_cuda_device.py)

# Set the CUDA visible devices
export CUDA_VISIBLE_DEVICES="$CUDA_DEVICE_ID"

# Set the Theano flags
export THEANO_FLAGS="device=gpu0,floatX=float32"

# Make sure the log directory exists
mkdir -p "$LOG_DIR"

# Make sure the model directory exists
mkdir -p "$MODEL_DIR"

# Make sure the root zips directory exists
mkdir -p "$ROOT_ZIPS_DIR"

# Print the CUDA visible devices
echo "\$CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES"

# Print the Theano flags
echo "\$THEANO_FLAGS=$THEANO_FLAGS"
