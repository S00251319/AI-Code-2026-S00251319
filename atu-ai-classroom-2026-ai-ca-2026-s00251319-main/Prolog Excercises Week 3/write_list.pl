write_list([]).
write_list([Item|Items]) :-
	writeln(Item),
	write_list(Items).
