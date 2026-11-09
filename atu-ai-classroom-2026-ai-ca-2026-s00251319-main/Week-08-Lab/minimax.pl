% Minimax for the Week 08 game tree.
% Query: ?- minimax(a, BestMove, Value).

max_to_move(a).
max_to_move(d).
max_to_move(e).
max_to_move(f).
max_to_move(g).

min_to_move(b).
min_to_move(c).
min_to_move(i).
min_to_move(j).
min_to_move(k).
min_to_move(l).
min_to_move(m).
min_to_move(n).
min_to_move(o).
min_to_move(p).

staticval(i, 8).
staticval(j, 6).
staticval(k, 7).
staticval(l, 5).
staticval(m, 4).
staticval(n, 3).
staticval(o, 9).
staticval(p, 2).

moves(a, [b, c]).
moves(b, [d, e]).
moves(c, [f, g]).
moves(d, [i, j]).
moves(e, [k, l]).
moves(f, [m, n]).
moves(g, [o, p]).

minimax(Pos, BestSucc, Val) :-
    moves(Pos, PosList), !,
    best(PosList, BestSucc, Val).
minimax(Pos, _, Val) :-
    staticval(Pos, Val).

best([Pos], Pos, Val) :-
    minimax(Pos, _, Val), !.
best([Pos1|PosList], BestPos, BestVal) :-
    minimax(Pos1, _, Val1),
    best(PosList, Pos2, Val2),
    betterof(Pos1, Val1, Pos2, Val2, BestPos, BestVal).

betterof(Pos0, Val0, _, Val1, Pos0, Val0) :-
    min_to_move(Pos0),
    Val0 > Val1, !.
betterof(Pos0, Val0, _, Val1, Pos0, Val0) :-
    max_to_move(Pos0),
    Val0 < Val1, !.
betterof(_, _, Pos1, Val1, Pos1, Val1).