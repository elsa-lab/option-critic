# Ignore errors regarding unset variables temporarily
set +u

# Initialize conda
# Reference: https://stackoverflow.com/a/56155771
eval "$(conda shell.bash hook)"

# Turn on error checking again
set -u
