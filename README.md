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

1. Run `option_critic/scripts/setup/install.sh`,
2. or `docker pull elsaresearchlab/option_critic:gtx10` for GTX 10 series GPU,
3. or `docker pull elsaresearchlab/option_critic:rtx20` for RTX 20 series GPU.

## Training

1. See scripts under `option_critic/scripts/train`

## Testing

To watch model after training, run:

```bash
python option_critic/run_best_model.py models/.../last_model.pkl
```

## Environment Info

See `Environment Info.md` for detail environment info on a working machine.

