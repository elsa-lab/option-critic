from option_critic._generators.common import read_file, write_file

# Set the random seeds
RANDOM_SEEDS = range(1000, 1000 + 5)

# Set the spec template (common contents) to read
COMMON_SPEC_TEMPLATE_PATH_TO_READ = 'option_critic/specs/train/_generators/common.template.yml'

# Set the spec template (run contents) to read
RUN_SPEC_TEMPLATE_PATH_TO_READ = 'option_critic/specs/train/_generators/run.template.yml'

# Set the spec template (download contents) to read
DOWNLOAD_SPEC_TEMPLATE_PATH_TO_READ = 'option_critic/specs/train/_generators/download.template.yml'


def gen_specs(settings):
    # Read the spec template
    spec_template = read_spec_template(settings)

    # Read the spec template for common content
    common_template = read_common_template()

    # Read the spec template for run contents
    run_template = read_run_template()

    # Read the spec template for download contents
    download_template = read_download_template()

    # Write the specs
    write_specs(settings, spec_template, common_template,
                run_template, download_template)


def read_spec_template(settings):
    # Get the template path
    template_path = settings['template_path_to_read']

    # Fill the name
    template_path = template_path.format(name=settings['name'])

    # Read the file and return the content
    return read_file(template_path)


def read_common_template():
    return read_file(COMMON_SPEC_TEMPLATE_PATH_TO_READ)


def read_run_template():
    return read_file(RUN_SPEC_TEMPLATE_PATH_TO_READ)


def read_download_template():
    return read_file(DOWNLOAD_SPEC_TEMPLATE_PATH_TO_READ)


def write_specs(
        settings, spec_template, common_template, run_template,
        download_template):
    # Write all specs
    for format_mapping in gen_spec_format_mappings(settings):
        # Build the common content
        commom_content = build_common_content(common_template, format_mapping)

        # Build the run contents
        run_contents = build_content_parts(run_template)

        # Build the download contents
        download_contents = build_content_parts(download_template)

        # Add the contents to the format mapping
        format_mapping['common_content'] = commom_content
        format_mapping['run_contents'] = run_contents
        format_mapping['download_contents'] = download_contents

        # Build the spec path
        spec_path = settings['spec_path_to_write'].format(**format_mapping)

        # Build the spec content
        spec_content = spec_template.format(**format_mapping)

        # Write the spec content
        write_file(spec_path, spec_content)


def build_common_content(common_template, format_mapping):
    # Build the common content and return
    return common_template.format(**format_mapping)


def build_content_parts(template):
    # Initialize the parts
    parts = []

    # Build all content parts
    for format_mapping in gen_parts_format_mappings():
        # Build the content part
        part = template.format(**format_mapping)

        # Add to the parts
        parts.append(part)

    # Merge all parts and return
    return '\n'.join(parts)


def gen_spec_format_mappings(settings):
    # Generate for all environments
    for env_id in settings['env_ids']:
        # Build the format mapping and yield
        yield {
            'name': settings['name'],
            'env_id': env_id,
        }


def gen_parts_format_mappings():
    # Generate for all random seeds
    for random_seed in RANDOM_SEEDS:
        # Build the format mapping and yield
        yield {
            'random_seed': random_seed,
        }
