#!/bin/bash

# Cause the script to exit on any errors
# Reference: https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Set common variables
source "option_critic/scripts/_common/set_common_variables.sh"

# Initialize conda
source "option_critic/scripts/_common/init_conda.sh"

# Create a conda environment
conda create -n "$CONDA_ENV_NAME" -y python=2.7

# Activate the conda environment
conda activate "$CONDA_ENV_NAME"

# Install the project in development mode
pip install -e .

# Install libgpuarray
# Reference: http://deeplearning.net/software/libgpuarray/installation.html
conda install -y pygpu

# Install the developement version of Lasagne
# Reference: https://github.com/aigamedev/scikit-neuralnetwork/issues/235#issuecomment-303639327
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip

# Install Pylearn2
# References:
# http://deeplearning.net/software/pylearn2/#download-and-installation
# https://stackoverflow.com/a/57104974
git clone git://github.com/lisa-lab/pylearn2.git "$PYLEARN2_INSTALL_PATH"
cp fixes/pylearn2/setup.py "$PYLEARN2_INSTALL_PATH/setup.py"
cd "$PYLEARN2_INSTALL_PATH"
python setup.py develop
cd -
