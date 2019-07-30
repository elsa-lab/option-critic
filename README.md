# The Option-Critic Architecture

Code for the [Option-Critic](https://arxiv.org/pdf/1609.05140v2.pdf) Architecture.

## Installation

1. Install Anaconda (See `conda.sh`)
2. Install the repo (See `install.sh`)

## CUDA Info

The following is the CUDA info on a working machine:

The command ([Reference](https://nvidia.custhelp.com/app/answers/detail/a_id/3751/~/useful-nvidia-smi-queries))

```bash
nvidia-smi --query-gpu=gpu_name,gpu_bus_id,vbios_version --format=csv
```

gives:

```bash
name, pci.bus_id, vbios_version
GeForce GTX 1080 Ti, 00000000:65:00.0, 86.02.39.40.62
```

## Environment Variables Info

The command

```bash
env | grep cuda
```

gives:

```bash
LIBRARY_PATH=/usr/local/lib:/home/shawn/.cuda/lib64:/home/shawn/.cuda/extras/CUPTI/lib64:
GPUARRAY_TEST_DEVICE=cuda0
CUDA_HOME=/home/shawn/.cuda
LD_LIBRARY_PATH=/usr/local/lib:/home/shawn/.cuda/lib64:/home/shawn/.cuda/extras/CUPTI/lib64:
CPATH=/home/shawn/.cuda/include:
PATH=/home/shawn/anaconda3/envs/option_critic/bin:/home/shawn/anaconda3/condabin:/home/shawn/py27/bin:/home/shawn/bin:/home/shawn/.local/bin:/home/shawn/.cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
```

## Training

See `train.sh`.

## Testing

To watch model after training, run:

```bash
python run_best_model.py models/env_id-XXX/seed-XXX/last_model.pkl
```
