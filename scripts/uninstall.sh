# Deactivate the Conda environment
source deactivate

# Remove the Conda environment
conda remove -n option_critic -y --all

# Remove Pylearn2
rm -rf $HOME/pylearn2
