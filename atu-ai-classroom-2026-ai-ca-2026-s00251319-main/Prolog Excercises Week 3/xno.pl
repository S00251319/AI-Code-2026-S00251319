% Each square has a row, column and content.
square(1, 1, blank).
square(1, 2, blank).
square(1, 3, blank).
square(2, 1, blank).
square(2, 2, 'X').
square(2, 3, blank).
square(3, 1, blank).
square(3, 2, 'O').
square(3, 3, blank).

% Get all the squares and print them.
print_board :-
    setof([R, C, Content], square(R, C, Content),ListOfSquares),
    print_squares(ListOfSquares).

% Stop when there are no more squares.
print_squares([]).
% Print each square and start a new line after each row.
print_squares([[_Row, Column, Content]|Squares]) :-
    print_content(Content),
    (   Column =:= 3
    ->  nl
    ;   write(' ')
    ),
    print_squares(Squares).

% Print a blank square as an underscore.
print_content(blank) :-
    write('_').
% Print an X square.
print_content('X') :-
    write('X').
% Print an O square.
print_content('O') :-
    write('O').

% Print the board.
main :-
    print_board.