# Create a Conda environment
conda create -n option_critic -y python=2.7

# Activate the Conda environment
source activate option_critic

# Install PyPI packages
pip install -r requirements.txt

# Install developement version of Lasagne
# Reference: https://github.com/aigamedev/scikit-neuralnetwork/issues/235#issuecomment-303639327
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip

# Install Pylearn2
# References:
# http://deeplearning.net/software/pylearn2/#download-and-installation
# https://stackoverflow.com/a/57104974
git clone git://github.com/lisa-lab/pylearn2.git $HOME/pylearn2
cp fixes/pylearn2/setup.py $HOME/pylearn2/setup.py
cd $HOME/pylearn2
python setup.py develop
cd -

# Install libgpuarray
# Reference: http://deeplearning.net/software/libgpuarray/installation.html
conda install -y pygpu
