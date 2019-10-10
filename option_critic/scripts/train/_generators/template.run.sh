#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

################################################################################
# Set Names
################################################################################

# Set the name
export NAME="{name}"

################################################################################
# Set Variable Training Arguments
################################################################################

# Set the environment ID
export ENV_ID="{env_id}"

# Set the seed
export SEED={random_seed}

################################################################################
# Run the Common Script
################################################################################

# Run the common script
bash "option_critic/scripts/train/$NAME/_common/run.sh"
