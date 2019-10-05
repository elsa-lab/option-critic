#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Set common variables
source "scripts/.common/set_common_variables.sh"

# Initialize conda
source "scripts/.common/init_conda.sh"

# Remove the conda environment
conda remove -n "$CONDA_ENV_NAME" -y --all

# Remove Pylearn2
rm -rf "$PYLEARN2_INSTALL_PATH"
