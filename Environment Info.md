# Environment Info

The following are the CUDA info on a working machine:

## nvcc Info

```bash
nvcc --version
```

gives

```bash
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2018 NVIDIA Corporation
Built on Sat_Aug_25_21:08:01_CDT_2018
Cuda compilation tools, release 10.0, V10.0.130
```

## nvidia-smi Info

The command ([Reference](https://nvidia.custhelp.com/app/answers/detail/a_id/3751/~/useful-nvidia-smi-queries))

```bash
nvidia-smi --query-gpu=gpu_name,gpu_bus_id,vbios_version --format=csv
```

gives:

```bash
name, pci.bus_id, vbios_version
GeForce RTX 2080 Ti, 00000000:0A:00.0, 90.02.17.00.7C
GeForce RTX 2080 Ti, 00000000:0B:00.0, 90.02.17.00.7C
GeForce RTX 2080 Ti, 00000000:41:00.0, 90.02.17.00.7C
GeForce RTX 2080 Ti, 00000000:42:00.0, 90.02.17.00.7C
```

## cudnn Info

The command ([Reference](https://stackoverflow.com/a/46200018))

```bash
cat /home/$USER/.cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2
```

gives

```cpp
#define CUDNN_MAJOR 7
#define CUDNN_MINOR 5
#define CUDNN_PATCHLEVEL 0
--
#define CUDNN_VERSION (CUDNN_MAJOR * 1000 + CUDNN_MINOR * 100 + CUDNN_PATCHLEVEL)

#include "driver_types.h"
```

## env Info

The command

```bash
CUDA_ENV=$(env | grep -e CUDA -e PATH); echo "${CUDA_ENV//$USER/\$USER}"
```

gives:

```bash
CUDA_DEVICE_ORDER=PCI_BUS_ID
CUDA_HOME=/home/$USER/.cuda
LD_LIBRARY_PATH=/home/$USER/.cuda/lib64:/home/$USER/.cuda/extras/CUPTI/lib64:
PATH=/home/$USER/bin:/home/$USER/.local/bin:/home/$USER/miniconda3/bin:/home/$USER/miniconda3/bin:/home/$USER/miniconda3/condabin:/home/$USER/.cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
CUDA_VISIBLE_DEVICES=0
```
