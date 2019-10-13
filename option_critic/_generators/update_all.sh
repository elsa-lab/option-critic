#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euxo pipefail

################################################################################
# Update Scripts
################################################################################

# Noodles scripts
python option_critic/scripts/noodles/classic/_generators/gen_scripts.py
python option_critic/scripts/noodles/reduced_action_space/_generators/gen_scripts.py
python option_critic/scripts/noodles/test/_generators/gen_scripts.py

# Training scripts
python option_critic/scripts/train/classic/_generators/gen_scripts.run.py
python option_critic/scripts/train/reduced_action_space/_generators/gen_scripts.run.py
python option_critic/scripts/train/test/_generators/gen_scripts.run.py

################################################################################
# Update Noodles Specs
################################################################################

python option_critic/specs/train/classic/_generators/gen_specs.py
python option_critic/specs/train/reduced_action_space/_generators/gen_specs.py
python option_critic/specs/train/test/_generators/gen_specs.py
