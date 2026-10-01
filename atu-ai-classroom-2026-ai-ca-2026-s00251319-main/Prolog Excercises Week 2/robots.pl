% Hand facts
handed(fred, right).
handed(bill, left).
handed(mary, right).

% Opposite hand rule
opposite(right, left).
opposite(left, right).

% What be le heavy Object?
heavy(trunk).

% Rule: Two people with opposite hands can lift a heavy object
can_lift(Object, Person1, Person2) :-
    heavy(Object),
    handed(Person1, Hand1),
    handed(Person2, Hand2),
    Person1 \= Person2,
    opposite(Hand1, Hand2).