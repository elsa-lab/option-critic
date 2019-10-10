import argparse

import GPUtil


def parse_args():
    # Create a parser
    parser = argparse.ArgumentParser(
        description='Get an available CUDA device')

    # Add arguments
    parser.add_argument('--max_load', default=0.7, type=float,
                        help='Select GPU device when the load is below it')
    parser.add_argument('--max_memory', default=0.7, type=float,
                        help='Select GPU device when the memory is below it')

    # Parse the arguments
    args = parser.parse_args()

    # Return the arguments
    return args


def get_available_cuda_device(max_load, max_memory):
    # Get the available GPU device IDs
    dev_ids = GPUtil.getAvailable(maxLoad=max_load, maxMemory=max_memory)

    # Check whether there are available GPU devices
    if len(dev_ids) <= 0:
        raise ValueError('Could not find any available GPU device')

    # Return the first device ID
    return dev_ids[0]


def main():
    # Parse the arguments
    args = parse_args()

    # Get available CUDA device
    dev_id = get_available_cuda_device(args.max_load, args.max_memory)

    # Print the device ID
    print(dev_id)


if __name__ == '__main__':
    main()
