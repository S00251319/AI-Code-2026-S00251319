% Peg Defining
peg(p1, round).
peg(p2, square).

% Hole Defining
hole(h1, round).
hole(h2, square).
hole(h3, round).

% Rule: Pegs fit in the hole if the shapes match
fits(Peg, Hole) :-
    peg(Peg, Shape),
    hole(Hole, Shape).

% Rule: Round pegs fit in round holes
round_fits(Peg, Hole) :-
    peg(Peg, round),
    hole(Hole, round),
    fits(Peg, Hole).