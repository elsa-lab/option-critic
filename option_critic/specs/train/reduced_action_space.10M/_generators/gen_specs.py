from option_critic.specs.train._generators.common import gen_specs

# Set the settings
settings = {
    'name': 'reduced_action_space.10M',
    'env_ids': ['asteroids', 'beam_rider', 'bowling', 'breakout', 'enduro',
                'freeway', 'kung_fu_master', 'ms_pacman', 'pong', 'qbert',
                'seaquest', 'skiing', 'space_invaders'],
    'template_path_to_read': 'option_critic/specs/train/{name}/_generators/template.yml',
    'spec_path_to_write': 'option_critic/specs/train/{name}/env_id-{env_id}.yml',
}

if __name__ == '__main__':
    gen_specs(settings)
