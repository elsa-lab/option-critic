# Enable to use conda functions
eval "$(conda shell.bash hook)"

# Deactivate the Conda environment
conda deactivate

# Remove the Conda environment
conda remove -n option_critic -y --all

# Remove Pylearn2
rm -rf $HOME/pylearn2
