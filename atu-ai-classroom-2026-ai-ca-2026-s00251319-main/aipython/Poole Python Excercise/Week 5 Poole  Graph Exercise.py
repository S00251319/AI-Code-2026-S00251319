# Week 5 Poole Graph Exercise.py

# Nodes in the graph
nodes = {"A", "B", "C", "D", "E", "F", "G", "X"}

# Arcs as (from_node, to_node, cost)
arcs = {
    ("A", "B", 2),
    ("A", "C", 1),
    ("B", "E", 4),
    ("B", "F", 4),
    ("C", "D", 6),
    ("C", "X", 4),
    ("D", "G", 5),
    ("E", "G", 1),
    ("F", "G", 4),
    ("X", "G", 5)
}

print("Nodes:", nodes)
print("Arcs:", arcs)
print("Graph:", graph)


