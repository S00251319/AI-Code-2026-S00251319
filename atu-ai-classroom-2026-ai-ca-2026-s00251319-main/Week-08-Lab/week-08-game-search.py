"""Use AIMA's minimax and alpha-beta searches on the Week 08 game tree."""

import os
import sys

sys.path.append(
    os.path.join(os.path.dirname(__file__), "..", "aima-python-master-2025")
)

from games import Game, alpha_beta_search, minmax_decision


class Week08Game(Game):
    """The game tree and utilities from the Week 08 figure."""

    initial = "a"

    successors = {
        "a": ["b", "c"],
        "b": ["d", "e"],
        "c": ["f", "g"],
        "d": ["i", "j"],
        "e": ["k", "l"],
        "f": ["m", "n"],
        "g": ["o", "p"],
    }

    utilities = {
        "i": 8,
        "j": 6,
        "k": 7,
        "l": 5,
        "m": 4,
        "n": 3,
        "o": 9,
        "p": 2,
    }

    def actions(self, state):
        return self.successors.get(state, [])

    def result(self, state, move):
        return move

    def utility(self, state, player):
        return self.utilities[state]

    def terminal_test(self, state):
        return state in self.utilities

    def to_move(self, state):
        if state in ["a", "d", "e", "f", "g"]:
            return "MAX"
        return "MIN"


game = Week08Game()
print("Minimax move:", minmax_decision(game.initial, game))
print("Alpha-beta move:", alpha_beta_search(game.initial, game))
