# You should install the packages in the activated Conda environment
pip install -r requirements.txt

# Change CUDA
rm ~/.cuda
ln -s /usr/local/cuda-10.0/ ~/.cuda
