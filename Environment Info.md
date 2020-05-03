# Environment Info

The following are the CUDA info on a working machine:

## Summary

- GPU name: `GeForce GTX 1080 Ti`
- NVIDIA driver: `418.113`
- CUDA toolkit: `8.0.61`
- cuDNN library: `5.1.10`

## GPU used

The command ([Reference](https://nvidia.custhelp.com/app/answers/detail/a_id/3751/~/useful-nvidia-smi-queries))

```bash
nvidia-smi --query-gpu=gpu_name,driver_version --format=csv
```

gives:

```bash
name, driver_version
GeForce GTX 1080 Ti, 418.113
GeForce GTX 1080 Ti, 418.113
GeForce GTX 1080 Ti, 418.113
```

## CUDA toolkit

The command 

```bash
nvcc --version
```

gives:

```bash
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2016 NVIDIA Corporation
Built on Tue_Jan_10_13:22:03_CST_2017
Cuda compilation tools, release 8.0, V8.0.61
```

## cuDNN Library

The command ([Reference](https://stackoverflow.com/a/46200018))

```bash
grep "define CUDNN_MAJOR" -A 2 /usr/include/cudnn.h
```

gives:

```cpp
#define CUDNN_MAJOR      5
#define CUDNN_MINOR      1
#define CUDNN_PATCHLEVEL 10
```

