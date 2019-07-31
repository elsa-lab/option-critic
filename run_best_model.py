import os
import subprocess
import sys


def test():
    command = ['python',
               'train_q.py',
               '--steps-per-epoch', '0',
               '--epochs', '1',
               '--test-length', '100000',
               '--nn-file', sys.argv[1],
               '--max-history', '10',
               '--testing'] + sys.argv[2:]

    p1 = subprocess.Popen(command, env=dict(
        os.environ, THEANO_FLAGS='floatX=float32,device=gpu'))
    p1.wait()


if __name__ == "__main__":
    test()
