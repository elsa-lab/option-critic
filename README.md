# The Option-Critic Architecture

Code for the [Option-Critic](https://arxiv.org/pdf/1609.05140v2.pdf) Architecture.
Original GitHub page: https://github.com/jeanharb/option_critic

## Requirements

This README is written for GTX 10 series GPU users.

First, install CUDA toolkit 8.0 and corresponding cuDNN library 5.1, then run:

``` bash
apt-get install -y \
    python-dev python-opencv python-tk python-numpy \
    libopenblas-dev cmake zlib1g-dev zip
```

## Installation

1. Run `option_critic/scripts/setup/install.sh`

> You may need to edit the installation path of Pylean2
- Defined as `PYLEARN2_INSTALL_PATH` in `option_critic/scripts/_common/set_common_variables.sh`.

> We also provide docker images, which make things easier:
- Run `docker pull elsaresearchlab/option_critic:gtx10` for GTX 10 series GPU
- Run `docker pull elsaresearchlab/option_critic:rtx20` for RTX 20 series GPU

## Training

1. See scripts under `option_critic/scripts/train`

### Quick start

```bash
cd /path/to/this/repo       # change to this repo
mkdir roms                  # create a directory to place the roms for training
mv /.../seaquest.bin ./roms # placing atari rom(s)
export NAME=500k            # identify the exp.
export ENV_ID=seaquest      # specify atari env
export EPOCHS=2             # 250k step/epoch
export SEED=1000            # random seed
bash option_critic/scripts/train/run.sh
```

### Using docker

```bash
docker run -it --rm \
  --gpus all \
  --env NAME=500k \
  --env ENV_ID=seaquest \
  --env EPOCHS=2 \
  --env SEED=1000 \
  -v ~/models:/option_critic/models \
  -v ~/logs:/option_critic/logs \
  -v ~/zips:/option_critic/zips \
  elsaresearchlab/option_critic:gtx10 \
  bash option_critic/scripts/train/run.sh
```

## Testing

To watch model after training, run:

```bash
python option_critic/run_best_model.py models/.../last_model.pkl
```

## Environment Info

See `Environment Info.md` for detail environment info on a working machine.

