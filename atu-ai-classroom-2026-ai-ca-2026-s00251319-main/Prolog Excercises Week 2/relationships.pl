% Gender facts
female(pam).
male(tom).
male(bob).
female(liz).
female(anne).

% Parent facts
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, anne).
parent(bob, pat).
parent(pat, jim).

% Rule: Two people are siblings if they share a parent
sibling(Person1, Person2) :-
    parent(Parent, Person1),
    parent(Parent, Person2),
    Person1 \= Person2.

% Rule: A female sibling is a sister
sister(Person1, Person2) :-
    sibling(Person1, Person2),
    female(Person1).

% Rule: A female sibling of a parent is an aunt
aunt(Aunt, NieceOrNephew) :-
    sister(Aunt, Parent),
    parent(Parent, NieceOrNephew).