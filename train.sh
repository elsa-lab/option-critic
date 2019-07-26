# Train directly
ENV_ID='Breakout'; THEANO_FLAGS='floatX=float32' python train_q.py --rom $ENV_ID --num-options 8 --folder-name $ENV_ID
