# Train directly
ENV_ID='beam_rider'; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom $ENV_ID --num-options 8 --folder-name $ENV_ID

# Train in Tmux detached session
ENV_ID='beam_rider'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='breakout'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='enduro'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='pong'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='qbert'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='seaquest'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"
ENV_ID='space_invaders'; tmux new -d -s "train/option_critic/env-id-$ENV_ID" "mkdir -p models/$ENV_ID; THEANO_FLAGS='floatX=float32,device=gpu' python train_q.py --rom=$ENV_ID --num-options=8 --folder-name=$ENV_ID > models/$ENV_ID/stdout.log 2> models/$ENV_ID/stderr.log"

# Kill the Tmux detached session
ENV_ID='beam_rider'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='breakout'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='enduro'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='pong'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='qbert'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='seaquest'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
ENV_ID='space_invaders'; tmux kill-ses -t "train/option_critic/env-id-$ENV_ID"
