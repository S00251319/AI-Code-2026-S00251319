from pathlib import Path
import sys

repo_root = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(repo_root))
sys.path.insert(0, str(repo_root / "aipython"))

from aipython.searchProblem import Search_problem_from_explicit_graph
from aipython.searchProblem import Arc

from aipython.searchGeneric import AStarSearcher

problem1 = Search_problem_from_explicit_graph(
    "Problem1",
    nodes={"a", "b", "c", "d", "e", "f", "g"},
    arcs=[
        Arc("a", "b", 5),
        Arc("a", "c", 5),
        Arc("b", "d", 5),
        Arc("b", "e", 2),
        Arc("e", "c", 2),
        Arc("e", "g", 3),
        Arc("c", "f", 2),
        Arc("c", "g", 5),
        Arc("f", "g", 1),
    ],
    start="a",
    goals={"g"},
    hmap={"a": 7, "b": 3, "c": 4, "d": 2, "e": 3, "f": 2, "g": 0},
)


astar_searcher = AStarSearcher(problem1)
astar_searcher.search()