% ----------------------------------------
% Defining the board
% 'e' stands for empty, 'x' is the player
% ----------------------------------------
createBoard([
    [1,1,e], [1,2,e], [1,3,e],
    [2,1,e], [2,2,x], [2,3,e],
    [3,1,e], [3,2,e], [3,3,e]
]).

% ----------------------------------------
% Find all of the horizontal & vertical squares
% ----------------------------------------
adjacent([Row, Col, _], AdjSquares) :-
% Load the Board (R = Row, C = Column, V = Value)
    createBoard(Board),
    findall(
        [R, C, V],
        (
% Look through each square
            member([R, C, V], Board),
            (
% Same row, look left and right
                (R =:= Row, abs(C - Col) =:= 1);
% Same column, look up and down
                (C =:= Col, abs(R - Row) =:= 1)
            )
        ),
% Collect all matching squares into this list
        AdjSquares
    ).
