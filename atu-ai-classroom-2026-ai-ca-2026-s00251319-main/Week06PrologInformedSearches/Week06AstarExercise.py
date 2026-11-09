graph = {
    'a': {'b': 5, 'c': 5},
    'b': {'d': 2, 'e': 2},
    'c': {'e': 2, 'f': 6},
    'd': {'g': 3},
    'e': {'g': 1},
    'f': {'g': 2}
}

h = {
    'a': 7,
    'b': 3,
    'c': 4,
    'd': 2,
    'e': 3,
    'f': 2,
    'g': 0
}

frontier = [(h['a'], 0, ['a'])]

while frontier:
    frontier.sort()
    f, g, path = frontier.pop(0)
    node = path[-1]

    if node == 'g':
        print(path, g)
        break

    for next_node, cost in graph[node].items():
        new_g = g + cost
        new_path = path + [next_node]
        frontier.append((new_g + h[next_node], new_g, new_path))