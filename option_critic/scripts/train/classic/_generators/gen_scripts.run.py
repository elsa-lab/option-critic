from option_critic.scripts.train._generators.common import gen_scripts

# Set the settings
settings = {
    'name': 'classic',
    'env_ids': ['beam_rider', 'breakout', 'enduro', 'pong', 'qbert',
                'seaquest', 'space_invaders'],
    'script_path_to_write': 'option_critic/scripts/train/{name}/run.env_id-{env_id}.seed-{random_seed}.sh',
}

if __name__ == '__main__':
    gen_scripts(settings)
