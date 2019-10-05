# Initialize conda
source "scripts/.common/init_conda.sh"

# Activate the conda environment
conda activate "$CONDA_ENV_NAME"

# Get an available CUDA device ID
CUDA_DEVICE_ID=$(python scripts/train/.common/get_available_cuda_device.py)

# Set the CUDA visible devices
export CUDA_VISIBLE_DEVICES="$CUDA_DEVICE_ID"

# Set the Theano flags
export THEANO_FLAGS="contexts=dev0->cuda0,floatX=float32,device=cuda0"

# Make sure the log directory exists
mkdir -p "$LOG_DIR"

# Make sure the model directory exists
mkdir -p "$MODEL_DIR"
