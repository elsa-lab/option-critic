from pathlib import Path

# Set the environment IDs
ENV_IDS = ['asteroids', 'beam_rider', 'bowling', 'breakout', 'enduro',
           'freeway', 'kung_fu_master', 'ms_pacman', 'pong', 'qbert',
           'seaquest', 'skiing', 'space_invaders']

# Set the random seeds
RANDOM_SEEDS = range(1000, 1000 + 5)

# Set the spec template path to read
SPEC_TEMPLATE_PATH_TO_READ = './template.yml'

# Set the spec template (run contents) to read
RUN_SPEC_TEMPLATE_PATH_TO_READ = '../../.templates/run.template.yml'

# Set the spec template (download contents) to read
DOWNLOAD_SPEC_TEMPLATE_PATH_TO_READ = '../../.templates/download.template.yml'

# Set the spec path to write
SPEC_PATH_TO_WRITE = '../env_id-{env_id}.yml'


def read_spec_template():
    return read_template(SPEC_TEMPLATE_PATH_TO_READ)


def read_run_template():
    return read_template(RUN_SPEC_TEMPLATE_PATH_TO_READ)


def read_download_template():
    return read_template(DOWNLOAD_SPEC_TEMPLATE_PATH_TO_READ)


def write_specs(spec_template, run_template, download_template):
    # Write all specs
    for format_mapping in gen_spec_format_mappings():
        # Build the run contents
        run_contents = build_content_parts(run_template)

        # Build the download contents
        download_contents = build_content_parts(download_template)

        # Add the contents to the format mapping
        format_mapping['run_contents'] = run_contents
        format_mapping['download_contents'] = download_contents

        # Build the spec content
        spec_content = spec_template.format_map(format_mapping)

        # Build the relative spec path
        relative_spec_path = SPEC_PATH_TO_WRITE.format_map(format_mapping)

        # Resolve the spec path
        spec_path = resolve_path(relative_spec_path)

        # Write the script content
        with open(spec_path, 'w', newline='\n') as fp:
            fp.write(spec_content)


def build_content_parts(template):
    # Initialize the parts
    parts = []

    # Build all content parts
    for format_mapping in gen_parts_format_mappings():
        # Build the content part
        part = template.format_map(format_mapping)

        # Add to the parts
        parts.append(part)

    # Merge all parts and return
    return '\n'.join(parts)


def gen_spec_format_mappings():
    # Generate for all environments
    for env_id in ENV_IDS:
        # Build the format mapping and yield
        yield {
            'env_id': env_id,
        }


def gen_parts_format_mappings():
    # Generate for all random seeds
    for random_seed in RANDOM_SEEDS:
        # Build the format mapping and yield
        yield {
            'random_seed': random_seed,
        }


def read_template(relative_path):
    # Resolve the path
    path = resolve_path(relative_path)

    # Open the file
    with open(path) as fp:
        # Read and return the content
        return fp.read()


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
    # Read the spec template
    spec_template = read_spec_template()

    # Read the spec template for run contents
    run_template = read_run_template()

    # Read the spec template for download contents
    download_template = read_download_template()

    # Write the specs
    write_specs(spec_template, run_template, download_template)


if __name__ == '__main__':
    main()
