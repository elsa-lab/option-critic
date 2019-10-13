from option_critic.specs.train._generators.common import gen_specs

# Set the settings
settings = {
    'name': 'test',
    'env_ids': ['beam_rider'],
    'template_path_to_read': 'option_critic/specs/train/{name}/_generators/template.yml',
    'spec_path_to_write': 'option_critic/specs/train/{name}/env_id-{env_id}.yml',
}

if __name__ == '__main__':
    gen_specs(settings)
