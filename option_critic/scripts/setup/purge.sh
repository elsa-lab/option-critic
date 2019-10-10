#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Run the uninstallation script
bash "option_critic/scripts/setup/uninstall.sh"

# Remove the logs directory
rm -rf logs

# Remove the models directory
rm -rf models
