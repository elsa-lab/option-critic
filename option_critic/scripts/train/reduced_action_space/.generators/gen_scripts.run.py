from pathlib import Path

# Set the environment IDs
ENV_IDS = ['asteroids', 'beam_rider', 'bowling', 'breakout', 'enduro',
           'freeway', 'kung_fu_master', 'ms_pacman', 'pong', 'qbert',
           'seaquest', 'skiing', 'space_invaders']

# Set the random seeds
RANDOM_SEEDS = range(1000, 1000 + 5)

# Set the script template path to read
SCRIPT_TEMPLATE_PATH_TO_READ = './template.run.sh'

# Set the script path to write
SCRIPT_PATH_TO_WRITE = '../run.env_id-{env_id}.seed-{random_seed}.sh'


def read_script_template():
    # Resolve the script template path
    script_template_path = resolve_path(SCRIPT_TEMPLATE_PATH_TO_READ)

    # Open the template file
    with open(script_template_path) as fp:
        # Read and return the content
        return fp.read()


def write_scripts(script_template):
    # Write all scripts
    for format_mapping in gen_script_format_mappings():
        # Build the script content
        script_content = script_template.format_map(format_mapping)

        # Build the relative script path
        relative_script_path = SCRIPT_PATH_TO_WRITE.format_map(format_mapping)

        # Resolve the script path
        script_path = resolve_path(relative_script_path)

        # Write the script content
        with open(script_path, 'w', newline='\n') as fp:
            fp.write(script_content)


def gen_script_format_mappings():
    # Generate all format mappings
    for env_id in ENV_IDS:
        for random_seed in RANDOM_SEEDS:
            # Build the format mapping and yield
            yield {
                'env_id': env_id,
                'random_seed': random_seed,
            }


def resolve_path(relative_path):
    # Get the directory of the current script
    cur_dir_obj = Path(__file__).parent

    # Join the relative path
    joined_path_obj = cur_dir_obj.joinpath(relative_path)

    # Resolve the path
    resolved_path_obj = joined_path_obj.resolve()

    # Return the path string
    return resolved_path_obj.as_posix()


def main():
    # Read the script template
    script_template = read_script_template()

    # Write the scripts
    write_scripts(script_template)


if __name__ == '__main__':
    main()
