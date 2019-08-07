# NOTE: Remember to activate the Conda environment first by running `conda activate option_critic`

################################################################################
# Train in Tmux detached session
################################################################################

# Seed: 1000
ENV_ID='beam_rider'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='breakout'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='enduro'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='pong'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='qbert'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='seaquest'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='space_invaders'; SEED=1000; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"

# Seed: 1001
ENV_ID='beam_rider'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='breakout'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='enduro'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='pong'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='qbert'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='seaquest'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='space_invaders'; SEED=1001; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"

# Seed: 1002
ENV_ID='beam_rider'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='breakout'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='enduro'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='pong'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='qbert'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='seaquest'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"
ENV_ID='space_invaders'; SEED=1002; tmux new -d -s "train/option_critic/env_id-$ENV_ID/seed-$SEED" "mkdir -p models/env_id-$ENV_ID/seed-$SEED; THEANO_FLAGS='floatX=float32,device=cuda0' python train_q.py --rom=$ENV_ID --num-options=8 --seed=$SEED --folder-name=env_id-$ENV_ID/seed-$SEED > models/env_id-$ENV_ID/seed-$SEED/stdout.log 2> models/env_id-$ENV_ID/seed-$SEED/stderr.log"

################################################################################
# Kill the Tmux detached session
################################################################################

# Seed: 1000
ENV_ID='beam_rider'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='breakout'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='enduro'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='pong'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='qbert'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='seaquest'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='space_invaders'; SEED=1000; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"

# Seed: 1001
ENV_ID='beam_rider'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='breakout'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='enduro'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='pong'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='qbert'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='seaquest'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='space_invaders'; SEED=1001; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"

# Seed: 1002
ENV_ID='beam_rider'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='breakout'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='enduro'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='pong'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='qbert'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='seaquest'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
ENV_ID='space_invaders'; SEED=1002; tmux kill-ses -t "train/option_critic/env_id-$ENV_ID/seed-$SEED"
