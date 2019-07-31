# You should activate the Conda environment before running the following commands

# Install PyPI packages
pip install -r requirements.txt

# Install developement version of Lasagne
# Reference: https://github.com/aigamedev/scikit-neuralnetwork/issues/235#issuecomment-303639327
pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip

# Install Pylearn2
# Reference: http://deeplearning.net/software/pylearn2/#download-and-installation
cd $HOME
git clone git://github.com/lisa-lab/pylearn2.git
python setup.py develop
cd -

# Change CUDA
ln -sfn /usr/local/cuda-8.0 ~/.cuda
