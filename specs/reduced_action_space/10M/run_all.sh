# Cause bash to exit with any errors
set -e
set -o pipefail

SUB_PATH='reduced_action_space/10M/beam_rider.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/beam_rider.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/beam_rider.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"

SUB_PATH='reduced_action_space/10M/breakout.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/breakout.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/breakout.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"

SUB_PATH='reduced_action_space/10M/enduro.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/enduro.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/enduro.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"

SUB_PATH='reduced_action_space/10M/pong.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/pong.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/pong.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"

SUB_PATH='reduced_action_space/10M/qbert.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/qbert.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/qbert.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"

SUB_PATH='reduced_action_space/10M/seaquest.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/seaquest.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/seaquest.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"

SUB_PATH='reduced_action_space/10M/space_invaders.seed-1000'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/space_invaders.seed-1001'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
SUB_PATH='reduced_action_space/10M/space_invaders.seed-1002'; NAME=${SUB_PATH////.}; mkdir -p logs/noodles; tmux new -d -s "noodles/option_critic/${SUB_PATH//./,}" "noodles run specs/$SUB_PATH.yml > logs/noodles/$NAME.stdout.log 2> logs/noodles/$NAME.stderr.log"
