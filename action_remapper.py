class ActionRemapper:
    def __init__(self, rom, ale):
        # Save the environment name
        self.rom = rom

        # Save the ALE environment
        self.ale = ale

        # Initialize the action remap
        self.action_remap = self._get_action_remap()

        # Print the action remap
        print('Action remapping is used: {}'.format(self.action_remap))

    def act(self, action):
        return self.ale.act(action)

    def game_over(self):
        return self.ale.game_over()

    def getEpisodeFrameNumber(self):
        return self.ale.getEpisodeFrameNumber()

    def getMinimalActionSet(self):
        # Get action set (e.g., [0, 1, 2, 3, 4, 6, 7, 11, 12] in beam_rider)
        legal_actions = self.ale.getMinimalActionSet()

        # Get original action targets (e.g., {0:0, 1:1, 2:7, 3:8})
        original_actions = [original for _, original
                            in self.action_remap.items()]

        # Map the index to the legal actions and return (e.g., [0, 1, 11, 12])
        return [legal_actions[idx] for idx in original_actions]

    def getScreenDims(self):
        return self.ale.getScreenDims()

    def getScreenGrayscale(self):
        return self.ale.getScreenGrayscale()

    def lives(self):
        return self.ale.lives()

    def reset_game(self):
        return self.ale.reset_game()

    def _get_action_remap(self):
        # Determine environment ID
        if self.rom == 'asteroids':
            return {
                0: 0,  # NOOP
                1: 1,  # FIRE
                2: 2,  # UP
                3: 3,  # RIGHT
                4: 4,  # LEFT
                5: 5,  # DOWN
                6: 6,  # UPRIGHT
                7: 7,  # UPLEFT
            }
        elif self.rom == 'beam_rider':
            return {
                0: 0,  # NOOP
                1: 1,  # FIRE
                2: 3,  # RIGHT
                3: 4,  # LEFT
            }
        elif self.rom == 'bowling':
            return {
                0: 0,  # NOOP
                1: 1,  # FIRE
                2: 2,  # UP
                3: 3,  # DOWN
            }
        elif self.rom == 'breakout':
            return self._identity_action_remap()
        elif self.rom == 'enduro':
            return {
                0: 0,  # NOOP
                1: 1,  # FIRE (Accelerate)
                2: 2,  # RIGHT
                3: 3,  # LEFT
                4: 4,  # DOWN (Decelerate)
            }
        elif self.rom == 'freeway':
            return self._identity_action_remap()
        elif self.rom == 'kung_fu_master':
            return self._identity_action_remap()
        elif self.rom == 'ms_pacman':
            return {
                0: 0,  # NOOP
                1: 1,  # UP
                2: 2,  # RIGHT
                3: 3,  # LEFT
                4: 4,  # DOWN
            }
        elif self.rom == 'pong':
            return {
                0: 0,  # NOOP
                1: 2,  # RIGHT
                2: 3,  # LEFT
            }
        elif self.rom == 'qbert':
            return {
                0: 0,  # NOOP
                1: 2,  # UP
                2: 3,  # RIGHT
                3: 4,  # LEFT
                4: 5,  # DOWN
            }
        elif self.rom == 'seaquest':
            return {
                0: 0,  # NOOP
                1: 1,  # FIRE
                2: 2,  # UP
                3: 3,  # RIGHT
                4: 4,  # LEFT
                5: 5,  # DOWN
            }
        elif self.rom == 'skiing':
            return self._identity_action_remap()
        elif self.rom == 'space_invaders':
            return {
                0: 0,  # NOOP
                1: 1,  # FIRE
                2: 2,  # RIGHT
                3: 3,  # LEFT
            }
        else:
            raise ValueError('Unknown environment ID: {}'.format(self.rom))

    def _identity_action_remap(self):
        # Get action set
        legal_actions = self.ale.getMinimalActionSet()

        # Get the number of actions
        num_actions = len(legal_actions)

        action_remap = {}

        for i in range(num_actions):
            action_remap[i] = i

        return action_remap
