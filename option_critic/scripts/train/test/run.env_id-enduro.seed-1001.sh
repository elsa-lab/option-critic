#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

################################################################################
# Set Names
################################################################################

# Set the name
export NAME="test"

################################################################################
# Set Variable Training Arguments
################################################################################

# Set the environment ID
export ENV_ID="enduro"

# Set the seed
export SEED=1001

################################################################################
# Run the Common Script
################################################################################

# Run the common script
bash "option_critic/scripts/train/$NAME/_common/run.sh"
