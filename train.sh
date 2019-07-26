# Train directly
ENV_ID='Breakout'; THEANO_FLAGS='floatX=float32' python train_q.py --rom $ENV_ID --num-options 8 --folder-name $ENV_ID

# Train in Tmux detached session
ENV_ID='BeamRider'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='Breakout'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='Enduro'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='Pong'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='Qbert'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='Seaquest'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='SpaceInvaders'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"

# Kill the Tmux detached session
ENV_ID='BeamRider'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='Breakout'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='Enduro'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='Pong'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='Qbert'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='Seaquest'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='SpaceInvaders'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
