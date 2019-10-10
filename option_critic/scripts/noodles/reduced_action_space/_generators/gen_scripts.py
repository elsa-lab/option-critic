from option_critic.scripts.noodles._generators.common import gen_scripts

# Set the settings
settings = {
    'name': 'reduced_action_space',
    'env_ids': ['asteroids', 'beam_rider', 'bowling', 'breakout', 'enduro',
                'freeway', 'kung_fu_master', 'ms_pacman', 'pong', 'qbert',
                'seaquest', 'skiing', 'space_invaders'],
    'script_path_to_write': 'option_critic/scripts/noodles/{name}/{noodles_action}.env_id-{env_id}.sh',
}

if __name__ == '__main__':
    gen_scripts(settings)
