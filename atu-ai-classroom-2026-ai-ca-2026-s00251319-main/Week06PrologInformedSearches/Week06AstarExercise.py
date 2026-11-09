"""Represent the Week 6 graph with Poole's search code and run A*."""

from pathlib import Path
import sys


sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "aipython"))

from searchGeneric import AStarSearcher
from searchProblem import Arc, Search_problem_from_explicit_graph


problem = Search_problem_from_explicit_graph(
    "Week 6 A* graph",
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


def main():
    searcher = AStarSearcher(problem)
    searcher.max_display_level = 4
    print("A* uses f(n) = path_cost g(n) + heuristic h(n):")
    path = searcher.search()

    if path is None:
        print("No path found.")
        return

    nodes = reversed(list(path.nodes()))
    print(f"Path: {' -> '.join(nodes)}")
    print(f"Total cost: {path.cost}")


if __name__ == "__main__":
    main()