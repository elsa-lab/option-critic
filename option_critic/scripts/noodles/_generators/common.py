from option_critic._generators.common import read_file, write_file

# Set all Noodles actions
NOODLES_ACTIONS = ['run', 'purge']

# Set the script template path to read
SCRIPT_TEMPLATE_PATH_TO_READ = 'option_critic/scripts/noodles/_generators/template.sh'


def gen_scripts(settings):
    # Read the script template
    script_template = read_script_template()

    # Write the scripts
    write_scripts(settings, script_template)


def read_script_template():
    return read_file(SCRIPT_TEMPLATE_PATH_TO_READ)


def write_scripts(settings, script_template):
    # Write all scripts
    for format_mapping in gen_script_format_mappings(settings):
        # Build the script path
        script_path = settings['script_path_to_write'].format(**format_mapping)

        # Build the script content
        script_content = script_template.format(**format_mapping)

        # Write the script content
        write_file(script_path, script_content)


def gen_script_format_mappings(settings):
    # Generate all format mappings
    for noodles_action in NOODLES_ACTIONS:
        for env_id in settings['env_ids']:
            # Build the format mapping and yield
            yield {
                'name': settings['name'],
                'env_id': env_id,
                'noodles_action': noodles_action,
            }
