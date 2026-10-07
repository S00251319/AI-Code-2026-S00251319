write_list([]).
write_list([H|T]) :-
    write(H), nl,
    write_list(T).

separate_list([], [], []).
separate_list([H|T], [H|Atoms], Integers) :-
    atom(H),
    separate_list(T, Atoms, Integers).

separate_list([H|T], Atoms, [H|Integers]) :-
    integer(H),
    separate_list(T, Atoms, Integers).